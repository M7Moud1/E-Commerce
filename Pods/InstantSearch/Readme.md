![InstantSearch iOS](./docgen/assets/img/instantsearch-banner.png)

<p align="left">
<img src="https://img.shields.io/badge/platform-iOS-blue.svg?style=flat" alt="Platform iOS" />
<a href="https://developer.apple.com/swift"><img src="https://img.shields.io/badge/Swift-4.0-blue.svg" alt="Swift 4 compatible" /></a>
<a href="https://developer.apple.com/documentation/objectivec"><img src="https://img.shields.io/badge/Objective--C-compatible-blue.svg" alt="Objective-C compatible" /></a>
<a href="https://cocoapods.org/pods/XLActionController"><img src="https://img.shields.io/cocoapods/v/InstantSearch.svg" alt="CocoaPods compatible" /></a>
<a href="https://raw.githubusercontent.com/algolia/InstantSearch/master/LICENSE"><img src="http://img.shields.io/badge/license-MIT-blue.svg?style=flat" alt="License: MIT" /></a>
</p>

By [Algolia](http://algolia.com).

InstantSearch family: **InstantSearch iOS** | [InstantSearch Android][instantsearch-android-github] | [React InstantSearch][react-instantsearch-github] | [InstantSearch.js][instantsearch-js-github] | [Angular InstantSearch][instantsearch-angular-github] | [Vue InstantSearch][instantsearch-vue-github].

**InstantSearch iOS** is a framework providing components and helpers to help you build the best instant-search experience on iOS with Algolia. It is built on top of Algolia's [Swift API Client](https://github.com/algolia/algoliasearch-client-swift) library to provide you a high-level solution to quickly build various search interfaces.

<!-- <img src="Example/InstantSearch.gif" width="300"/> -->

## Demo

You can see InstantSearch iOS in action in our [Examples repository][examples-url], in which we published search experiences built with InstantSearch and written in Swift:

<p align="center">
  <img src="./docgen/assets/img/single-index.png" width="300"/>
</p>

[examples-url]: https://github.com/algolia/instantsearch-swift-examples

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org/) is a dependency manager for Cocoa projects.

To install InstantSearch, simply add the following line to your Podfile:

#### Swift 4.2+

```ruby
pod 'InstantSearch', '~> 4.0'
# pod 'InstantSearch/UI' for access to everything
# pod 'InstantSearch/Core' for access to everything except the UI controllers
# pod 'InstantSearch/Client' for access only to the API Client
```

#### Swift 4.1

```ruby
pod 'InstantSearch', '~> 2.0'
# pod 'InstantSearch/Widgets' for access to everything
# pod 'InstantSearch/Core' for access to everything except the UI widgets
# pod 'InstantSearch/Client' for access only to the API Client
```

Then, run the following command:

```bash
$ pod update
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a simple, decentralized dependency manager for Cocoa.

To install InstantSearch, simply add the following line to your Cartfile:

#### Swift 4.2+

```ruby
github "algolia/instantsearch-ios" ~> 4.0 # for access to everything
# github "algolia/instantsearch-core-swift" ~> 5.0 # for access to everything except the UI widgets
# github "algolia/algoliasearch-client-swift" ~> 6.0 # for access only to the API Client
```

#### Swift 4.1

```ruby
github "algolia/instantsearch-ios" ~> 2.0 # for access to everything
# github "algolia/instantsearch-core-swift" ~> 3.0 # for access to everything except the UI widgets
# github "algolia/algoliasearch-client-swift" ~> 5.0 # for access only to the API Client
```

### SwiftPM 

The API client is the only library of the framework available on SwiftPM.

#### Swift 4.2+

To install the API Client, add `.package(url:"https://github.com/algolia/algoliasearch-client-swift", from: "6.0.0")` to your package dependencies array in Package.swift, then add `AlgoliaSearch` to your target dependencies.


#### Swift 4.1

To install the API Client, add `.package(url:"https://github.com/algolia/algoliasearch-client-swift", from: "5.0.0")` to your package dependencies array in Package.swift, then add `AlgoliaSearch` to your target dependencies.

## Documentation

**You can start with the [Getting Started Guide](https://www.algolia.com/doc/guides/building-search-ui/getting-started/ios/).**

Learn more about instantSearch iOS in the [dedicated documentation website](https://www.algolia.com/doc/api-reference/widgets/ios/).

## Basic Usage

In your `ViewController.swift`:

```swift
import InstantSearch

let searcher: SingleIndexSearcher = .init(appID: "latency",
                                          apiKey: "1f6fd3a6fb973cb08419fe7d288fa4db",
                                          indexName: "bestbuy")
  
let queryInputInteractor: QueryInputInteractor = .init()
let searchBarController: SearchBarController = .init(searchBar: UISearchBar())
  
let statsInteractor: StatsInteractor = .init()
let statsController: LabelStatsController = .init(label: UILabel())

override func viewDidLoad() {
    super.viewDidLoad()
    setup()
    configureUI()
}

func setup() {
    searcher.connectFilterState(filterState)
    
    queryInputInteractor.connectSearcher(searcher)
    queryInputInteractor.connectController(searchBarController)
    
    statsInteractor.connectSearcher(searcher)
    statsInteractor.connectController(statsController)

    searcher.search()
}

func configureUI() {
    
    view.backgroundColor = .white
    
    let stackView = UIStackView()
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.spacing = 16
    stackView.axis = .vertical
    stackView.layoutMargins = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
    stackView.isLayoutMarginsRelativeArrangement = true
    
    let searchBar = searchBarController.searchBar
    searchBar.translatesAutoresizingMaskIntoConstraints = false
    searchBar.heightAnchor.constraint(equalToConstant: 40).isActive = true
    searchBar.searchBarStyle = .minimal
    stackView.addArrangedSubview(searchBar)
    
    let statsLabel = statsController.label
    statsLabel.translatesAutoresizingMaskIntoConstraints = false
    statsLabel.heightAnchor.constraint(equalToConstant: 16).isActive = true
    stackView.addArrangedSubview(statsLabel)

    stackView.addArrangedSubview(UIView())

    view.addSubview(stackView)

    NSLayoutConstraint.activate([
      stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
      stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
      stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
      stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
    ])

}
```

Run your app and you will the most basic search experience: a `UISearchBar` with the number of results each time you write a query.

To get a more meaningful search experience, please follow our [Getting Started Guide](https://www.algolia.com/doc/guides/building-search-ui/getting-started/ios/).

## Getting Help

- **Need help**? Ask a question to the [Algolia Community](https://discourse.algolia.com/) or on [Stack Overflow](http://stackoverflow.com/questions/tagged/algolia).
- **Found a bug?** You can open a [GitHub issue](https://github.com/algolia/algoliasearch-client-swift/issues).
- **Questions about Algolia?** You can search our [FAQ in our website](https://www.algolia.com/doc/faq/).


## Getting involved

* If you **want to contribute** please feel free to **submit pull requests**.
* If you **have a feature request** please **open an issue**.
* If you use **InstantSearch** in your app, we would love to hear about it! Drop us a line on [discourse](https://discourse.algolia.com/) or [twitter](https://twitter.com/algolia).

# License

InstantSearch iOS is [Apache 2.0 licensed](LICENSE.md).

[react-instantsearch-github]: https://github.com/algolia/react-instantsearch/
[instantsearch-android-github]: https://github.com/algolia/instantsearch-android
[instantsearch-js-github]: https://github.com/algolia/instantsearch.js
[instantsearch-vue-github]: https://github.com/algolia/vue-instantsearch
[instantsearch-angular-github]: https://github.com/algolia/angular-instantsearch
