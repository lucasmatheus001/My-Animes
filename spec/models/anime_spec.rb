require 'rails_helper'

RSpec.describe Anime, type: :model do
  subject(:anime) { build :anime }

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:genres) }
    it { should validate_presence_of(:episodes) }
    it { should validate_presence_of(:studios) }
    it { should validate_presence_of(:duration) }
    it { should validate_presence_of(:situation) }
    

  end

  context "Validar criação de anime" do     
    it "if valide" do
        
        
    end

    it "if not valide" do
        anime = FactoryBot.build(:anime)
        # puts anime.name
        anime.save
        post = Anime.new(id: 1,name: anime.name, description: anime.description,image_url: anime.image_url,genres: anime.genres,episodes: anime.episodes,studios: anime.studios,duration: anime.duration, situation: anime.situation,user_id: 2)
        expect(post).not_to be_valid
    end
  end
end
