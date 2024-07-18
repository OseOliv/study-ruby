# Descrição
# Crie um sistema para gerenciar um computador e seus monitores.

# Lógica
# Classe Monitor:

# Atributo: tamanho (por exemplo, "24 polegadas").
# Método: ligar que imprime uma mensagem dizendo que
#  o monitor de determinado tamanho está ligado.

# Classe Computador:

# Atributos: marca e monitores (uma lista de objetos Monitor).
# Método: adicionar_monitor que adiciona um monitor à lista de monitores.
# Método: ligar_computador que imprime uma mensagem dizendo
# que o computador de determinada marca está ligado e,
# em seguida, liga todos os monitores na lista de monitores
# chamando o método ligar de cada monitor.

class Monitor
  attr_reader :tamanho

  def initialize(tamanho)
    @tamanho = tamanho
  end

  def ligar_monitor
    puts "O monitor de tamanho #{@tamanho} esta ligado!"
  end
end

class Computador
  attr_reader :marca, :monitores

  def initialize(marca)
    @marca = marca
    @monitores = []
  end

  def adicionar_monitor(monitor)
    @monitores.push(monitor)
  end

  def ligar_computador
    puts "O monitor da #{@marca} esta ligado."
    @monitores.each { |monitor| monitor.ligar_monitor }
  end
end

m1 = Monitor.new('24 polegadas')
m2 = Monitor.new('27 Polegadas')

computador = Computador.new('ASUS ROG')
computador.adicionar_monitor(m1)
computador.adicionar_monitor(m2)

computador.ligar_computador
