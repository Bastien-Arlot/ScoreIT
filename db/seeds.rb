# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#destroy all seed before db:seed
AnswerFinance.destroy_all
AnswerStrategy.destroy_all
AnswerOffer.destroy_all
AnswerMarket.destroy_all
AnswerTeam.destroy_all
AnswerInnovation.destroy_all
CategoryTeam.destroy_all
CategoryOffer.destroy_all
CategoryMarket.destroy_all
CategoryFinance.destroy_all
CategoryStrategy.destroy_all
CategoryInnovation.destroy_all
Score.destroy_all
Startup.destroy_all
User.destroy_all

3.times do |r|
  user = User.create!(
    email: "a#{r}@yopmail.com",
    password: 'aaaaaa',
    username: "a#{r}"
    );

    startup = Startup.create!(
      name: "THP#{r}",
      description: Faker::ChuckNorris.fact,
      user_id: User.last.id
      );

      score = Score.create!(
        name: "2022 - 28 - 03",
        total: 63,
        total_max: 63,
        total_100: 100,
        startup_id: Startup.last.id
        );

        category_teams = CategoryTeam.update(
          total_notation_team: 12,
          max_notation_team: 12,
          total_100_team: 100,
          score_id: Score.last.id
          );

          category_strategys = CategoryStrategy.update(
            total_notation_strategy: 14,
            max_notation_strategy: 14,
            total_100_strategy: 100,
            score_id: Score.last.id
            );

            category_offers = CategoryOffer.update(
              total_notation_offer: 13,
              max_notation_offer: 13,
              total_100_offer: 100,
              score_id: Score.last.id
              );

              category_markets = CategoryMarket.update(
                total_notation_market: 10,
                max_notation_market: 10,
                total_100_market: 100,
                score_id: Score.last.id
                );

                category_innovations = CategoryInnovation.update(
                  total_notation_innovation: 9,
                  max_notation_innovation: 9,
                  total_100_innovation: 100,
                  score_id: Score.last.id
                  );

                  category_finances = CategoryFinance.update(
                    total_notation_finance: 5,
                    max_notation_finance: 5,
                    total_100_finance: 100,
                    score_id: Score.last.id
                    );

                    answer_team = AnswerTeam.update(
                      answer_team_1: 2,
                      answer_team_2:2,
                      answer_team_3:2,
                      answer_team_4:2,
                      answer_team_5:2,
                      answer_team_6:1,
                      answer_team_7:1,
                      answer_team_8:0,
                      answer_team_9:0,
                      answer_team_10:0,
                      category_team_id: Score.last.id
                      );

                      answer_strategy = AnswerStrategy.update(
                        answer_strategy_1:2,
                        answer_strategy_2:1,
                        answer_strategy_3:1,
                        answer_strategy_4:0,
                        answer_strategy_5:1,
                        answer_strategy_6:2,
                        answer_strategy_7:2,
                        answer_strategy_8:1,
                        answer_strategy_9:1,
                        answer_strategy_10:1,
                        answer_strategy_11:2,
                        category_strategy_id: Score.last.id
                        );

                        answer_offer = AnswerOffer.update(
                          answer_offer_1:1,
                          answer_offer_2:1,
                          answer_offer_3:2,
                          answer_offer_4:2,
                          answer_offer_5:2,
                          answer_offer_6:2,
                          answer_offer_7:2,
                          answer_offer_8:1,
                          category_offer_id: Score.last.id
                          );

                          answer_market = AnswerMarket.update(
                            answer_market_1:0,
                            answer_market_2:0,
                            answer_market_3:1,
                            answer_market_4:1,
                            answer_market_5:2,
                            answer_market_6:1,
                            answer_market_7:3,
                            answer_market_8:2,
                            category_market_id: Score.last.id
                            );

                            answer_innovation = AnswerInnovation.update(
                              answer_innovation_1:2,
                              answer_innovation_2:1,
                              answer_innovation_3:1,
                              answer_innovation_4:2,
                              answer_innovation_5:1,
                              answer_innovation_6:1,
                              category_innovation_id: Score.last.id
                              );

                              answer_finance = AnswerFinance.update(
                                answer_finance_1:1,
                                answer_finance_2:1,
                                answer_finance_3:1,
                                answer_finance_4:1,
                                answer_finance_5:1,
                                category_finance_id: Score.last.id
                                );

                              end
