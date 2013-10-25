class Experience < ActiveRecord::Base
  include FriendlyId
  include Tire::Model::Search
  include Tire::Model::Callbacks

  friendly_id :title, use: :slugged

  def self.search(params)
    query = "*#{params[:query]}*"
    tire.search() do
      query { string query }

      sort { by :happened_at, 'desc' }
    end
  end
end
