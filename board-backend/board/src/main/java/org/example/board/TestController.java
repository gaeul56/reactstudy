package org.example.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

    @RequestMapping("/index")
    private String jspIndex() {
        return "index";
    }

}

