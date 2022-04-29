//
//  Onboard.swift
//  Zikr
//
//  Created by Dicky Alamsyah on 27/04/22.
//

import SwiftUI

//Intro model and sample intro's
struct OnBoardingView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
    //            Color.accentColor
    //                .ignoresSafeArea(.all, edges: .all)
                Image("BackgroundOnboard")
                    .resizable()
                    .aspectRatio(geometry.size, contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 20) {
                    Spacer()
                    
                    ZStack{
                        ZStack{
                            Image("Background")
                                .resizable()
                                .scaledToFit()
                            Image("Sitting")
                                .resizable()
                                .scaledToFit()
                        }
                    }
                    
                    VStack(spacing: 0) {
                        Text("وَقَالَ رَبُّكُمُ ٱدْعُونِىٓ أَسْتَجِبْ لَكُمْ")
                            .font(.system(size: 25))
                            .foregroundColor(.white)
                        Text("""
                            “And your Lord said: ‘Call upon Me;
                            I will respond to you.’” (40:60)
                        """)
                            .font(.title3)
                            .fontWeight(.light)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                    }
                    
                    Spacer()
                    
                    ZStack{
                        
                    }
                }
            }
        }
    }
}

struct OnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
