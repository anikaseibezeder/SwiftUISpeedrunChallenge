//
//  ContentView.swift
//  SwiftUISpeedrunChallenge
//
//  Created by Anika Seibezeder on 21.05.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "bolt.fill")
                    .imageScale(.small)
                    .padding(5)
                    .background(
                        Circle()
                            .stroke(.white, lineWidth: 1)
                    )
                
                Spacer()
                
                Image(systemName: "chevron.up")
                    .padding(9)
                    .background(
                        Circle()
                            .fill(.white.opacity(0.12))
                    )
                
                Spacer()
                
                Image(systemName: "livephoto")
                    .imageScale(.large)
            }
            .foregroundColor(.white)
            .padding(.horizontal, 10)
            .padding(.vertical, -6)
            .frame(height: 74, alignment: .top)
            .background(.black.opacity(0.5))
            
            Spacer()
            
            VStack(spacing: 13) {
                HStack {
                    Text("0,5")
                        .font(.caption2)
                        .fontWeight(.bold)
                        .padding(5)
                        .foregroundColor(.white)
                        .background(
                            Circle()
                                .fill(.black.opacity(0.65))
                        )
                    
                    Text("1x")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .padding(12)
                        .foregroundColor(.yellow)
                        .background(
                            Circle()
                                .fill(.black.opacity(0.65))
                        )
                    
                    Text("3")
                        .font(.caption2)
                        .fontWeight(.bold)
                        .padding(8)
                        .foregroundColor(.white)
                        .background(
                            Circle()
                                .fill(.black.opacity(0.65))
                        )
                }
                
                VStack(spacing: 4) {
                    HStack(spacing: 5) {
                        Text("CINEMATIC")
                            .fontWeight(.medium)
                            .rotation3DEffect(.degrees(30),
                                              axis: (x: 0, y: -1, z: 0),
                                              anchor: .center,
                                              perspective: 0.5)
                            
                        Spacer()
                        
                        Text("VIDEO")
                            .fontWeight(.medium)
                        
                        Spacer()
                        
                        Text("PHOTO")
                            .fontWeight(.medium)
                            .foregroundColor(.yellow)
                        
                        Spacer()
                        
                        Text("PORTRAIT")
                            .fontWeight(.medium)
                        
                        Spacer()
                        
                        Text("PANO")
                            .fontWeight(.medium)
                            .rotation3DEffect(.degrees(30),
                                              axis: (x: 0, y: 1, z: 0),
                                              anchor: .center,
                                              perspective: 0.5)
                            .padding(.trailing, 3)
                    }
                    .font(.footnote)
                    .padding(.top)
                    .padding(.trailing, 8)
                    .mask {
                        LinearGradient(gradient: Gradient(colors: [.black.opacity(0.7),.black, .black, .black, .black.opacity(0.7)]),
                                       startPoint: .leading,
                                       endPoint: .trailing)
                    }
                    
                    HStack {
                        Image("background")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .cornerRadius(3)
                        
                        Spacer()
                        
                        Circle()
                            .fill(.white)
                            .frame(width: 60, height: 60)
                            .padding(4)
                            .background(
                                Circle()
                                    .stroke(.white, lineWidth: 4)
                            )
                        
                        Spacer()
                        
                        Image(systemName: "arrow.triangle.2.circlepath")
                            .font(.title2)
                            .padding(12)
                            .background(
                                Circle()
                                    .fill(.white.opacity(0.12))
                            )
                    }
                    .padding(.vertical)
                    .padding(.horizontal, 8)
                    
                    Spacer()
                }
                .foregroundColor(.white)
                .padding(.horizontal, 10)
                .frame(height: 169)
                .background(.black.opacity(0.8))
            }
        }
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
