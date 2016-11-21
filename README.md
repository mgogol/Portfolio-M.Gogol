# Planning **portfolio_website** Application

  1. Answer Questions
    - What am I building?
    - Who am I building it for?
    - What features do I need to have?
  2. User Stories.
  3. Model our Data.
  4. Think through the pages I need in my application.

## Questions

  1. What am I building? I'm building a personal portfolio website. A place where a can show my completed projects and have people contact with me.
  2. Who am I building it for? I'm building it for myself. Show potential employers that I know what I'm doing.
  3. What features do I need to have?
    - Projects
      - Create / Edit / Destroy
    - Contact
      - Contact Form
      - Send grid
    - User (Devise)


## User Stories
  - As a user, I want be able to create a portfolio element to share it.
  - As a user, I want be able to edit & destroy posts, so that I can manage my portfolio.
  - As a user, I want to show the visitors and potential employers examples of my work.
  - As a user, I want be able to have visitors contact me through form on my site.

## Modeling our Data
  **Project**
    title:string
    description:text
    link:string
    image:picture
  **User**

## Think through the pages we need in our application

  - Home
  - Projects
  - Projects#index
  - Projects#show
