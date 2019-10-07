class Application
  def call(env_hash)
    Song.new("Coffee")
    Song.new("Lost Highway")
    Song.new("No Guidance")
    Song.new("N Dey Say")
    Song.new("Old Town Road")

    req = Rack::Request.new(env_hash)
    resp = Rack::Response.new

    if req.path.match(/songs/)
      song_list_items = Song.all.map{ |song| "<li>#{song.name}</li>" }.join
      resp.write("
        <h1>Songs List</h1>
        <ul>
          #{song_list_items}
        </ul> 
        ")
    else
      resp.write("Don't you wanna hear my groovy tunes?!")
    end 

    resp.finish
  end
end
