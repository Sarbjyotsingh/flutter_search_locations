# flutter_search_locations

A Flutter project to Search Locations

## Architectural:
MVVM: MVVM architecture allows us to separate the user interface (View) from the
business logic (ViewModel) and data (Model). This separation makes it easier to
maintain, test and modify each component of the application independently without
affecting the others. The business logic (ViewModel) is decoupled from the View. It
helps us maintain a clean architecture.

## State Management:
Riverpod: Riverpod encourages a modular design approach to state management,
which makes it easy to organize and manage your code. This can improve the overall
maintainability and readability of your codebase
Riverpod is highly scalable and can be used in both small and large applications. It
provides a flexible architecture that allows you to manage states across different layers
of your application.
In the Current application, we have fetched data from API and displayed it according to
search text which makes Riverpod a good choice.

## Implementing Delay in API Call while typing:
We frequently use a search box in our app to conduct network-based autocomplete-style
searches. It would be impractical in this situation to send a network request for each
character the user types or modifies because that would waste resources. As soon as the
user pauses or stops typing, it is preferable to call API. Using a Class, which utilizes a
timer to delay the search request until it stops receiving text updates after 0.3 seconds
or any duration you specify, we have accomplished this.

## Demo Video:

https://user-images.githubusercontent.com/28133782/221783378-cd7434f4-5844-4956-8364-575e82f551c4.mp4

