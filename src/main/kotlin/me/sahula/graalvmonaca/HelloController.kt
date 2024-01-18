package me.sahula.graalvmonaca

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class HelloController {

    @GetMapping("hello")
    fun hello() = "Hi. The app is running well."
}