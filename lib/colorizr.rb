class String

  def self.create_colors
    @list = {30=>"black", 31=>"red", 32=>"green", 33=>"yellow", 34=>"blue", 35=>"magenta",
    36=>"cyan", 37=>"light_gray", 90=>"dark_gray", 91=>"light_red", 92=>"light_green",
    93=>"light_yellow", 94=>"light_blue", 95=>"light_magenta", 96=>"light_cyan", 97=>"while"}

    @list.each do |key, value|
      self.send(:define_method, "#{@list[key]}") do
        "\e[#{key}m#{self}\e[0m"
      end
    end
  end

  def self.colors
    @list.map {|key, value| @list[key]}
  end

  def self.sample_colors
    @list.each do |key, value|
      color = @list[key].send (@list[key])
      puts "This is #{color}"
    end
  end
end

String.create_colors
