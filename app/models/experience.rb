class Experience < ActiveRecord::Base
  include FriendlyId
  include Tire::Model::Search
  include Tire::Model::Callbacks

  friendly_id :title, use: :slugged

  def self.search(params)
    qstring = "*#{params[:query]}*"
    tire.search() do
      query { string qstring }

      facet 'substances' do
        terms :substance
      end

      sort { by :happened_at, 'desc' }
    end
  end
end
