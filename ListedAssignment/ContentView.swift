//
//  ContentView.swift
//  ListedAssignment
//
//  Created by Suchith Nayaka on 22/05/24.
//

import SwiftUI

enum Tabs: String, CaseIterable {
    case links = "Links"
    case courses = "Courses"
    case campaigns = " Campaigns"
    case profile = "Profile"
    
    var image: ImageResource {
        switch self {
        case .links:
            return .linkTab
        case .courses:
            return .coursesTab
        case .campaigns:
            return .campaignTab
        case .profile:
            return .profileTab
        }
    }
    
    var view: AnyView {
        switch self {
        case .links:
            return AnyView(LinksTabView())
        case .courses, .campaigns, .profile:
            return AnyView(Text("TODO"))
        }
    }
}

struct ContentView: View {
    @State var selectedTab: Tabs = .links
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ForEach(Tabs.allCases, id: \.self) { each in
                each.view
                    .tabItem {
                        Image(each.image)
                        Text(each.rawValue)
                    }
                    .tag(each)
            }
        }
        .background(.white)
        .accentColor(.black)
    }
}

#Preview {
    ContentView()
}
