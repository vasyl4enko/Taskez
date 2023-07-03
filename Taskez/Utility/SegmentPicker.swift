//
//  SegmentPicker.swift
//  Taskez
//
//  Created by Oleksandr on 03.07.2023.
//

import SwiftUI

struct SegmentPicker: View {
    @Binding var selected: Int
    let dataSource: [String]
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                ForEach(Array(dataSource.enumerated()), id: \.offset) { offset, option in
                    VStack {
                        Button {
                            withAnimation {
                                selected = offset
                            }
                        } label: {
                            Text(option)
                                .foregroundColor(selected == offset ? .white : .segmentTextDisabled)
                                .fontTemplate(AppFontTemplate.button_s)
                                .padding(.horizontal, 16)
                                .padding(.vertical, 4)
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(selected == offset ? .primary_app : .clear)
                        .clipShape(Capsule())
                        
                    }
                }
            }
        }
    }
}

struct SegmentPicker_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            SegmentPicker(selected: .constant(0), dataSource: [ "Overview","Productivity"])
                .previewLayout(.sizeThatFits)
        }
        
    }
    
}
