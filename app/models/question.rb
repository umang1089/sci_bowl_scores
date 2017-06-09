class Question < ApplicationRecord

  belongs_to :game

  validates :game_id, :presence => true

  # validate :only_one_tossup
  # validate :no_tossup_with_penalty_a
  # validate :no_tossup_with_penalty_b
  # validate :bonus_only_with_tossup

  def only_one_tossup
    if (:team_a_tossup == 4  && :team_b_tossup == 4)
      errors.add(:base, "Only one team can correctly answer a tossup")
    end
  end

  def no_tossup_with_penalty_a
    if (:team_a_tossup != 0 && :team_b_penalty != 0)
      errors.add(:base, "A team cannot have a correct tossup after an interrupt or a blurt")
    end
  end

  def no_tossup_with_penalty_b
    if (:team_b_tossup != 0 && :team_a_penalty !=0)
      errors.add(:base, "A team cannot have a correct tossup after an interrupt or a blurt")
    end
  end

  def bonus_only_with_tossup
    if (:team_b_bonus - :team_b_tossup > 6 || :team_a_bonus - :team_a_tossup > 6)
      errors.add(:base, "You can only score a bonus if you have scored a tossup")
    end
  end


end
