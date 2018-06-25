class JwtService

  def self.encode(payload)
    devKey = Digest::MD5.hexdigest 'JwtService'
    JWT.encode(payload, devKey, 'HS256')
  end

  def self.decode(token)
    devKey = Digest::MD5.hexdigest 'JwtService'
    body, = JWT.decode(token, devKey,
                       true, algorithm: 'HS256')
    HashWithIndifferentAccess.new(body)
  rescue JWT::ExpiredSignature
    nil
  end

end