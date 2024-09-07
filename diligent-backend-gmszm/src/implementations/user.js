export class User {
    constructor() {
        this.books = [];
    }

    borrow(book, library) {
        if (this.hasBook(book)) {
            throw new Error('Book is already borrowed!')
        }
        if (library.getBooks().includes(book) && !this.hasBook(book)) {
            this.books.push(book);
            library.removeBook(book);
        } else {
            throw new Error('Book cannot be borrowed!');
        }
        
    }

    hasBook(book) {
        return this.books.includes(book);
    }

    return(book, library) {
        if (this.hasBook(book)) {
            this.books = this.books.filter(b => b !== book);
            library.addBook(book);
        } else {
            return false;
        }
    }

    getBookNames() {
        return this.books.map(book => book.name);
    }
}