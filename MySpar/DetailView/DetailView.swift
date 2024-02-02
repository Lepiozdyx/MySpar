//
//  DetailView.swift
//  MySpar
//
//  Created by Alex on 02.02.2024.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ZStack(alignment: .topLeading) {
                    ImageView(
                        urlString: Constants.imageUrl,
                        width: Constants.imageWidth,
                        height: Constants.imageHeight
                    )
                    
                    ImageLabelView(
                        name: "Цена по карте",
                        width: Constants.imageLabelWidth,
                        height: Constants.imageLabelHeight
                    )
                }
                
                HStack {
                    ReviewAndRatingView(
                        imageName: "star.fill",
                        rating: "4.1",
                        reviews: 19,
                        action: {}
                    )
                    
                    Spacer()
                    
                    DiscountLabelView(discountAmount: "-5%")
                }
                
                HeaderView(header: "Добавка ''Липа'' к чаю 200 г")
                
                CountryView(
                    countryFlag: .spain,
                    countryName: "Испания, Риоха",
                    width: Constants.countryViewWidth,
                    height: Constants.countryViewHeight
                )
                
                DescriptionView(
                    header: "Описание",
                    description: "Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенок сосудов."
                )
                
                ProductCharacteristicsView()
                
                HeadlineButtonView(headline: "Отзывы", reviewsAmount: 152, action: {})
                
            }
            .padding([.leading, .trailing])
            
            ScrollingReviewTilesView()
            
            FeedbackButtonView(text: "Оставить отзыв", action: {})
                .padding([.leading, .trailing])
            
            Divider()
            
            PriceAndQuantityBarView()
                .padding()
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                CustomBackButtonView(
                    width: Constants.backButtonWidth,
                    height: Constants.backButtonHeight
                )
            }
            
            ToolbarItemGroup(placement: .topBarTrailing) {
                ToolbarButtonView(
                    name: "list.bullet.rectangle.portrait",
                    width: Constants.toolbarButtonWidth,
                    height: Constants.toolbarButtonHeight,
                    action: {}
                )
                
                ToolbarButtonView(
                    name: "square.and.arrow.up",
                    width: Constants.toolbarButtonWidth,
                    height: Constants.toolbarButtonHeight,
                    action: {}
                )
                
                ToolbarButtonView(
                    name: "heart",
                    width: Constants.toolbarButtonWidth,
                    height: Constants.toolbarButtonHeight,
                    action: {}
                )
            }
        }
    }
}

#Preview {
    NavigationView {
        DetailView()
    }
}
