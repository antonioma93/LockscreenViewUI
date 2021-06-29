//
//  ContentView.swift
//  LockscreenView
//
//  Created by Massa Antonio on 29/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack(spacing: 3) {
                Text("Vodafone")
                    .font(.system(size: 13, weight: .regular, design: .default))
                    .padding(.leading, 27)
                Spacer()
                
                HStack(alignment: .bottom, spacing: 2) {
                    RoundedRectangle(cornerRadius: 4, style: .continuous)
                        .frame(width: 3.5, height: 4)
                        .clipped()
                    RoundedRectangle(cornerRadius: 2, style: .continuous)
                        .frame(width: 3.5, height: 6)
                        .clipped()
                    RoundedRectangle(cornerRadius: 2, style: .continuous)
                        .frame(width: 3.5, height: 8)
                        .clipped()
                    RoundedRectangle(cornerRadius: 2, style: .continuous)
                        .frame(width: 3.5, height: 10)
                        .clipped()
                        .opacity(0.27)
                }
                .padding(.trailing, 1)
                Image(systemName: "wifi.circle").renderingMode(.original)
                    .font(.system(size: 13, weight: .regular, design: .default))
                Image(systemName: "battery.75")
                    .font(.system(size: 14, weight: .regular, design: .default))
                    .padding(.trailing, 23)
            }
            .padding(.top, 19)
            Image(systemName: "lock.open.fill")
                .font(.system(size: 38, weight: .regular, design: .default))
                .padding(.top, 13)
                .offset(x: 5, y: 0)
            Text("11.42")
                .font(.system(size: 70, weight: .light, design: .default))
                .padding(.top, 2)
                .frame(height: 80, alignment: .top)
                .clipped()
            Text("Tuesday, June 29")
                .font(.system(size: 22, weight: .regular, design: .default))
                .padding(.top, 3)
            Image(systemName:"paperplane.circle.fill").renderingMode(.original)
                .font(.system(size: 29, weight: .bold, design: .default))
                .padding(.top, 30)
                .padding(.trailing, 100)
                .offset(x: 5, y: 0)
            Image(systemName: "phone.circle.fill").renderingMode(.original)
                .font(.system(size: 29, weight: .bold, design: .default))
                .padding(.top, -40)
                .offset(x: 5, y: 0)
            Spacer()
            HStack {
                VisualEffectView(style: .systemUltraThinMaterial)
                    .frame(width: 50, height: 50)
                    .clipped()
                    .overlay(Group {
                        EmptyView()
                    }, alignment: .center)
                    .mask(Circle())
                    .overlay(Image(systemName: "message.circle").renderingMode(.original))
                    .font(.system(size: 23, weight: .semibold, design: .default))
                Spacer()
                VisualEffectView(style: .systemUltraThinMaterial)
                    .frame(width: 50, height: 50)
                    .clipped()
                    .overlay(Group {
                        EmptyView()
                    }, alignment: .center)
                    .mask(Circle())
                    .overlay(Image(systemName: "music.note.house")
                    .font(.system(size: 21, weight: .semibold, design: .default))
                            .offset(x: 0, y: -2), alignment: .center)
            }
            .padding(.horizontal, 47)
            .offset(x: 0, y: 20)
            Text("Swipe up to unlock")
                .padding(.bottom, 20)
                .font(.system(size: 14, weight: .semibold, design: .default))
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .frame(width: 137, height: 5)
                .clipped()
                .padding(.bottom, 12)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .clipped()
        .foregroundColor(Color.white)
        .background(Image("metro")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill), alignment: .center)
        .ignoresSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct VisualEffectView: UIViewRepresentable {
    let style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}
