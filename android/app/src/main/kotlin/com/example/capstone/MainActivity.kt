package com.example.capstone

import android.content.Intent
import android.net.Uri
import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val CHANNEL = "openIntentChannel"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "intent") {
                val url = call.argument<String>("url")
                if (url != null) {
                    openIntent(url)
                    result.success(null)
                } else {
                    result.error("UNAVAILABLE", "URL not available.", null)
                }
            } else {
                result.notImplemented()
            }
        }
    }

    private fun openIntent(url: String) {
        val intent = Intent.parseUri(url, Intent.URI_INTENT_SCHEME)
        val packageManager = packageManager

        if (intent != null) {
            val info = packageManager.resolveActivity(intent, 0)
            if (info != null) {
                startActivity(intent)
            } else {
                val fallbackUrl = intent.getStringExtra("browser_fallback_url")
                if (fallbackUrl != null) {
                    val browserIntent = Intent(Intent.ACTION_VIEW, Uri.parse(fallbackUrl))
                    startActivity(browserIntent)
                }
            }
        }
    }
}
