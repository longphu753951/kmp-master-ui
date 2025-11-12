package com.phutl.mastering_ui

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform