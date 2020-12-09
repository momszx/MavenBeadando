package daojson;

import books.model.Book;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;

public class DAOJSON {
    File file;
    ObjectMapper mapper;

    public DAOJSON(String filePath) throws IOException {
        this.file = new File(filePath);
        this.mapper = new ObjectMapper();
        mapper.registerModule((new JavaTimeModule()));
        if(!file.exists()) {
            file.createNewFile();
            FileWriter writer = new FileWriter(file);
            writer.write(("[]"));
            writer.close();
        }
    }

    public Book readBookByTitle(String title) throws IOException, BookNotExist {
        Collection<Book> Books = readAllBook();
        for (Book c: Books) {
            if (c.getTitle().equalsIgnoreCase(title)){
                return c;
            }
        }
        throw new BookNotExist();
    }

    public Collection<Book> readAllBook() throws IOException {
        Collection<Book> r = new ArrayList<>();
        r = mapper.readValue(file, new TypeReference<ArrayList<Book>>(){});
        return r;
    }

    public void addBook(Book Book) throws IOException, DuplicatedBook {
        try
        {
            readBookByTitle(Book.getTitle());
        }
        catch (BookNotExist BookNotExist)
        {
            Collection<Book> Books = readAllBook();
            Books.add(Book);
            mapper.writeValue(file, Books);
            return;
        }
        throw new DuplicatedBook(Book.getTitle());
    }
}
