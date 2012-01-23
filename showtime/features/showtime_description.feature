Feature: Showtme Descriptions

    So that I can find movies that fit my schedule
    As a move goes
    I want to see accurate and concise showtimes

    @wip
    Scenario: Show minutes for tmes not ending with 
        Given a movie
        When I set the showtime to "2007-10-10" at "2:15pm"
        Then the showtime description should be "October 10, 2007 (2:15pm)"
    Scenario: Hide minuts for times ending with 00
        Given a movie
        When I set the showtime to "2007-10-10" at "2:00pm"
        Then the showtime description should be "October 10, 2007 (2pm)"

