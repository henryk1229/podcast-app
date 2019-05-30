module UsersHelper

  def baccano_for(user, options = { size: 50 })
    baccano_id = Digest::MD5::hexdigest(user.full_name.downcase)
    size = options[:size]
    baccano_url = "https://avatar.baccano.io"
    image_tag(baccano_url, alt: user.full_name, class: "baccano")
    #<img src="https://avatar.baccano.io/random" alt="Random avatar" />
  end

end
