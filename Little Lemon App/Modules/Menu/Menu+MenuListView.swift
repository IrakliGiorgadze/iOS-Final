//
//  MenuListView.swift
//  Little Lemon App
//
//  Created by Ryan Paterson on 2023/02/01.
//

import SwiftUI

// MARK: - Menu List View
extension Menu {
    struct MenuListView: View {
        @Environment(\.managedObjectContext) private var viewContext
        @Binding var searchText: String
        
        var body: some View {
            Group {
                NavigationView {
                    FetchedObjects(
                        predicate: buildPredicates(),
                        sortDescriptors: buildSortDescriptors()
                    ) { (dishes: [Dish]) in
                        ScrollView {
                            ForEach(dishes, id: \.self) { dish in
                                NavigationLink( destination: {
                                    MenuItemDetailView(
                                        title: dish.title ?? "",
                                        price: dish.price ?? "",
                                        image: dish.image ?? "",
                                        description: dish.dishDescription ?? ""
                                    )
                                }) {
                                    MenuItemSummaryView(dish: dish)
                                }
                            }
                            
                        }
                        .scrollContentBackground(.hidden)
                    }
                }
                .task {
                    await getMenuData()
                }
            }
        }

        func getMenuData() async {
            PersistenceController.shared.clear()
            
            let urlString = "https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/menu.json"
            let url = URL(string: urlString)!
            let request = URLRequest(url: url)
            let urlSession = URLSession.shared
            let decoder = JSONDecoder()
            
            do {
                let (data, _) = try await urlSession.data(from: url)
                let menuList = try decoder.decode(MenuList.self, from: data)
                for menuItem in menuList.menu {
                    let dish = Dish(context: viewContext)
                    dish.title = menuItem.title
                    dish.price = menuItem.price
                    dish.image = menuItem.image
                    dish.dishDescription = menuItem.description
                }
                try? viewContext.save()
            }
            
            catch { }
        }

        func buildSortDescriptors() -> [NSSortDescriptor] {
            return [NSSortDescriptor(key: "title", ascending: true, selector: #selector(NSString.localizedStandardCompare))]
        }
        
        func buildPredicates() -> NSPredicate {
            searchText.isEmpty
            ? NSPredicate(value: true)
            : NSPredicate(format: "title CONTAINS[cd] %@", searchText)
        }
    }
}
