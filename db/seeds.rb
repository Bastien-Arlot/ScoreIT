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


user = User.create!(

  username: "Administrator",
  password: "administrator",
  email: "admin@yopmail.com",
  is_admin: true,
);

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

  score = Score.last.update!(
    startup_id: Startup.last.id
    );


                    answer_team = AnswerTeam.create!(
                      answer_team_1:100,
                      answer_team_2:100,
                      answer_team_3:100,
                      answer_team_4:100,
                      answer_team_5:1,
                      answer_team_6:2,
                      answer_team_7:3,
                      answer_team_8:1,
                      answer_team_9:2,
                      answer_team_10:1,
                      category_team_id: Score.last.id
                      );

                      answer_strategy = AnswerStrategy.create!(
                        answer_strategy_1:1,
                        answer_strategy_2:1,
                        answer_strategy_3:1,
                        answer_strategy_4:0,
                        answer_strategy_5:1,
                        answer_strategy_6:0,
                        answer_strategy_7:1,
                        answer_strategy_8:1,
                        answer_strategy_9:1,
                        answer_strategy_10:1,
                        answer_strategy_11:8,
                        category_strategy_id: Score.last.id
                        );

                        answer_offer = AnswerOffer.create!(
                          answer_offer_1:3,
                          answer_offer_2:25,
                          answer_offer_3:80,
                          answer_offer_4:80,
                          answer_offer_5:80,
                          answer_offer_6:80,
                          answer_offer_7:80,
                          answer_offer_8:1,
                          category_offer_id: Score.last.id
                          );

                          answer_market = AnswerMarket.create!(
                            answer_market_1:0,
                            answer_market_2:0,
                            answer_market_3:70,
                            answer_market_4:1,
                            answer_market_5:2,
                            answer_market_6:1,
                            answer_market_7:10,
                            answer_market_8:10,
                            category_market_id: Score.last.id
                            );

                            answer_innovation = AnswerInnovation.create!(
                              answer_innovation_1:1,
                              answer_innovation_2:4,
                              answer_innovation_3:82,
                              answer_innovation_4:1,
                              answer_innovation_5:3,
                              answer_innovation_6:1,
                              answer_innovation_7:1,
                              category_innovation_id: Score.last.id
                              );

                              answer_finance = AnswerFinance.create!(
                                answer_finance_1:18,
                                answer_finance_2:1,
                                answer_finance_3:2,
                                answer_finance_4:1,
                                answer_finance_5:1,
                                category_finance_id: Score.last.id
                                );

                              end
