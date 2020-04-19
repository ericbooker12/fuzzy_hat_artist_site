# README

### Summary
An Artist's gallery to showcase his various artistic mediums. Admin area reflects Artist's desire for minimalistic interface. (Built with Ruby on Rails.)

Live at: [MarkEinert.com](http://www.markeinert.com/)

![Home page](/public/index_page.png "Home page")

### Features
- Artist's work organized in Galleries and Collections
- Carousel display of Items in selected Collection
- Mobile responsive design
- Minimalist backend for Artist management
- Ability for Artist to un/archive Galleries

### Built with
- Ruby on Rails
- Bootstrap Carousel
- Paperclip gem for image uploading
- Simple_form for minimalist forms
- Devise for secure login
- AWS S3 for static image storage
- AWS Cloudfront CDN for delivery

### Testing strategy
Development mostly followed BDD using:
- Cucumber

We also are doing unit tests for models and controllers.
- FactoryGirl
- Rspec

### Contributors
- [Shawn Tuttle](https://github.com/shawnte)
- [Eric Booker](https://github.com/ericbooker12)

### License
This project is licensed under the MIT License - see the LICENSE.md file for details

### Todo
- Add drag and drop capability for artist to order images

### Challenges
- Get (font) glyphicons to work b/c of CORS.
