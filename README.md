# Creative Rails Project

### Contributors:

Parnika Sharma

### Summary:

Organization systems are useful, but often, they are so tightly structured it is hard to adapt them to fit all of your daily needs. A bullet journal is a highly customizable and efficient way to organize tasks, notes, and due dates. In its basic form, it is a set of checklists and symbols used to track tasks and progress on tasks. This is an online/digital version of a bullet journal.

### Users:

Young people, typically students, as at least for the analog version, the bullet journal demographic seems to be high school and college students looking for more free-form ways to organize their information.

### MVP:

The most basic form of a bullet journal would be very similar to a checklist. The user needs to be able to enter lines of text as goals or things they want to accomplish. Each should be accompanied by a small square (or another shape) that the user can mark off in some way (likely filling the square in with color) when the task is completed.

### Functionality:

This is a simple way to store and organize tasks and ideas. The interface is very simple. Click on the new item blurb in the top right corner of the screen to get a new bullet journal item. This will bring up a form where you can enter the information for what your newest task or item is and where you can set the status. Once you have added the item, you are directed back to the main page where you can see all of the tasks and ideas you have added. Each will have a little symbol next to it indicating its status to you. You can edit and delete items as needed by clicking on the task's title, which will take you to the individual task page

### Installation Steps:

1. 	Clone the repository from github in terminal by navigating to a folder where you would like		to keep the rails project and entering the following command.

	git clone https://github.com/psharma16/Creative-Rails-Project.git

2.  In terminal, move into the Creative-Rails-Project directory, then the bullet_list_checklist 	directory using the following commands.
	
3.	Run the following commands in the bullet_list_checklist folderto set up the database model 		correctly:
	rake db:drop db:create db:migrate

4.	Run the following command to start up the rails server:
	rails server

5.	In your browser, navigate to localhost:3000. You should see the front page of the application.

### Issues:

The main issues that came up during development revolved around unfamiliarity with how everything worked and was interacting with each other. The specific elements that were the hardest to implement were the editing and deleting functionality and having those link to the correct pages and work properly. The issues surrounding that implementation were particularly hard to solve because I wasn't sure how to approach solving them or where to start. Ultimately, finding better resources and working more slowly ended up solving a lot of my problems, since it gave me a chance to understand and get familiar with where everything needed to go.

The biggest issues still present revolve around how interactive the project is. In order to get the statuses to show individually, I have the statuses represented as an integer, which is how the user has to enter them in the edit and create new items forms, which is decidedly non-ideal. It would be preferable to have the user just select the symbol to use, that way the user could determine the meanings of the symbols. Also, at the moment sorting by symbol type has not been implemented.

### References

http://masteruby.github.io/weekly-rails/2014/03/22/how-to-create-todo-list-app-static-pages.html#.WnfI-5M-eXQ

https://www.youtube.com/watch?v=Z9GaNNztcZk&ab_channel=RyanHemrick

https://www.bootstrapcdn.com/fontawesome/

https://fontawesome.bootstrapcheatsheets.com/

https://v4-alpha.getbootstrap.com/layout/grid/#vertical-alignment

https://gist.github.com/davidphasson/91613

https://www.digitalocean.com/community/questions/how-to-run-rails-application-cloned-from-github