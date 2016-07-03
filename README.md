# survey-widget practicum

### TASKS

## Initial Setup
  * Rails skeleton
  * Models & migrations
  * ActiveRecord associations
  * General navigation
  * View for index page

## Users
  * Validations for user records
  * Routes for new & existing users
  * Set up secret key for course authors to use when registering - sets the appropriate "role" in the model to govern authorization
  * Views for registration, login
  * Error handling

## Surveys
  * Validations for survey records
  * Routes to show all as well as to create, update, delete existing surveys
  * Views for surveys
    - Attempted to use modal to create a new survey (the form is just the title so it would be really nice not to redirect). Spent 90 minutes working on the modal but it was hitting the controller three times and I couldn't figure out why. Had to move on to deal with questions and finalizing the survey. Left the HTML in the survey/index view so I can go back to it.
  * Process to finalize survey 
    - Currently set to allow only the survey's creator to finalize a survey
    - Could change this to allow any Course Author to finalize any survey
  * Error handling

## Questions
  * Validations for question records
  * Routes to show, create, update, delete existing questions
  * Views for questions
  * Error handling

## Testing
  * Model tests
  * Controller tests

## Students
  * Create migration for "responses" table
  * Set up associations
  * Routes for responses to create, update & show
  * Update views for questions & surveys to access these new routes
  * Change survey#show view to include response (either most common resp or stats on each) 

## Deployment
  * Basic heroku setup (https://survey-widget.herokuapp.com/)
  * Set up secret key for course author registration in heroku config

## UI
  * Improve login & registration rendering
  * Add info regarding secret key on hover (registration view)
  * Show questions in modals with different actions allowed depending on user's role
