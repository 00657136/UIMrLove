//
//  SettingView.swift
//  MrLove
//
//  Created by User18 on 2019/12/7.
//  Copyright © 2019 User23. All rights reserved.
//

import SwiftUI

struct SettingView: View {
    var content : String
    var body: some View {
        Text(content)
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView(content: "")
    }
}
