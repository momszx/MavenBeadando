package java.controller;

import daojson.DAOJSON;
import daojson.DuplicatedBook;
import daojson.BookNotExist;

import books.model.Book;
import books.model.Genre;
import books.model.Type;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Controller
@EnableWebMvc
public class BooksController {
    @Autowired
    DAOJSON daojson;

    @GetMapping(value = "/")
    public ModelAndView index() {
        ModelAndView m = new ModelAndView("index");
        m.addObject("message");
        return m;
    }

    @RequestMapping(value = "/books")
    public ModelAndView listbooks() throws IOException {
        ModelAndView m = new ModelAndView("books");
        m.addObject("books", daojson.readAllBook());
        return m;
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public ModelAndView addbook(@ModelAttribute Book book) throws IOException {
        System.out.println(book);
        try {
            daojson.addBook(book);
        } catch (DuplicatedBook duplicatedbook) {
            ModelAndView m = new ModelAndView("form", "command", book);
            m.addObject("typeTypes", Type.values());
            m.addObject("genreTypes", Genre.values());
            m.addObject("message", "EXISTS !" + book.getTitle());
            return m;
        }
        ModelAndView m = new ModelAndView("redirect:book/" + book.getTitle());
        return m;
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public ModelAndView addBookForm() {
        ModelAndView m = new ModelAndView("form", "command", new Book());
        m.addObject("typeTypes", Type.values());
        m.addObject("genreTypes", Genre.values());
        return m;
    }

    @RequestMapping(value = "/books/{title}")
    public ModelAndView getBookByTitle(@PathVariable String title) throws IOException, BookNotExist {
        ModelAndView m = new ModelAndView("details");
        m.addObject("books", daojson.readBookByTitle(title));
        return m;
    }

    @ExceptionHandler(BookNotExist.class)
    public ModelAndView bookNotExistMissing() {
        ModelAndView m = new ModelAndView("index");
        m.addObject("message", "NOT FOUND!");
        return m;
    }
}
