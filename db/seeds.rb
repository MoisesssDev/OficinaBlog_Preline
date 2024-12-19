require "open-uri"

puts "Seeding data..."

# Criar usuários

user = User.create!(email: "moises@example.com", password: "secret123", password_confirmation: "secret123")

puts "Created user: #{user.email}"

# Criar artigos com textos e imagens especificados
articles_data = [
  {
    title: "Benefícios da Yoga",
    content: "Yoga traz diversos benefícios, incluindo melhora da flexibilidade, redução do estresse e aumento da força mental. Praticar yoga regularmente pode transformar sua vida de maneira significativa.",
    cover_image_url: "https://picsum.photos/800/600?random=1"
  },
  {
    title: "Como viajar pode fazer bem para a saúde",
    content: "Viajar não é apenas um prazer, mas também uma oportunidade de cuidar da saúde mental e física. Explorar novos lugares ajuda a reduzir o estresse, melhora a criatividade e proporciona novas perspectivas.",
    cover_image_url: "https://picsum.photos/800/600?random=2"
  },
  {
    title: "Empreender para transformar o mundo em um lugar melhor",
    content: "Empreender é mais do que criar negócios. É uma forma de gerar impacto positivo, resolvendo problemas reais e contribuindo para uma sociedade mais justa e sustentável.",
    cover_image_url: "https://picsum.photos/800/600?random=3"
  },
  {
    title: "Tecnologia como meio para empoderar as pessoas",
    content: "A tecnologia tem o poder de empoderar indivíduos e comunidades, oferecendo ferramentas para aprendizado, comunicação e inovação. Quando usada com responsabilidade, pode transformar vidas.",
    cover_image_url: "https://picsum.photos/800/600?random=4"
  },
  {
    title: "Como foi a viagem para Recife!",
    content: "Recife é um destino incrível, cheio de cultura, gastronomia e belezas naturais. Durante a viagem, conheci praias paradisíacas, explorei o centro histórico e provei pratos típicos inesquecíveis.",
    cover_image_url: "https://picsum.photos/800/600?random=5"
  }
]

articles_data.each do |article_data|
  article = Article.new(
    title: article_data[:title],
    content: article_data[:content],
  )

  # Adicionar imagem cover
  file = URI.open(article_data[:cover_image_url])
  article.header_image.attach(
    io: file,
    filename: File.basename(URI.parse(article_data[:cover_image_url]).path),
    content_type: "image/jpg"
  )

  article.save!
  puts "Created article: #{article.title}"
end

puts "Seeding completed!"
