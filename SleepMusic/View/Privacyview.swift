//
//  Privacyview.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 12/05/2023.
//

import SwiftUI

struct Privacyview: View {
    @EnvironmentObject var dataSource: ThemeModel
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Privacy Policy")
                        .font(.system(size: 20))
                        .bold()
                    Text("Jeroen Voogd built the Hypnos app as a Free app. This SERVICE is provided by Jeroen Voogd at no cost and is intended for use as is. This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service. If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy. The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at Hypnos unless otherwise defined in this Privacy Policy.")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom)

                    Text("Information Collection and Use")
                        .font(.system(size: 20))
                        .bold()
                    Text("For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information. The information that I request will be retained on your device and is not collected by me in any way.")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom)

                    Text("Changes to This Privacy Policy")
                        .font(.system(size: 20))
                        .bold()
                    Text("I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page. \n\n This policy is effective as of 2023-05-27")
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom)


                    Text("Contact Us")
                        .font(.system(size: 20))
                        .bold()
                    Text("If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at jpvoogd@icloud.com")
                        .padding(.bottom)
                }
                .padding(.all)
            }



        }.navigationTitle("Privacy Policy")
    }
}

struct Privacyview_Previews: PreviewProvider {
    static var previews: some View {
        Privacyview()
            .environmentObject(ThemeModel())
    }
}
