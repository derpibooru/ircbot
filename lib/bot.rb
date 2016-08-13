require 'cinch'
require 'json'


class Bot
  include Cinch::Plugin

  BOB_ROSS      = JSON.parse(File.read("data/bobross.json"))
  PLINKETT      = File.readlines("data/plinkett.txt")
  OPNAME_PREFIX = File.readlines("data/opname_prefix.txt")
  OPNAME_SUFFIX = File.readlines("data/opname_suffix.txt")

  def bobross(m)
    m.reply BOB_ROSS.sample
  end

  def derpiback(m)
  end

  def help(m)
    m.reply "Lol, you think there's help. How cute."
  end

  def opname(m)
    m.reply "OPERATION #{OPNAME_PREFIX.sample} #{OPNAME_PREFIX.sample} #{OPNAME_SUFFIX.sample}".upcase
  end

  def plinkett(m)
    m.reply PLINKETT.sample
  end

  def php_fact(m)
    m.reply "http://phpsadness.com/sad/#{(0..53).to_a.sample}"
  end

  def printer_fact(m)
  end

  def quote(m)
  end

  def seen(m)
  end

  def skeltal(m)
    m.reply "https://www.youtube.com/watch?v=10pqeNBg5d0"
  end

  def h(m)
    m.reply "h"
  end

  def pay_respects(m)
    m.reply "h"
  end

  def rickroll(m)
    m.reply "linked a rick roll, watch out"
  end

  def kline(m)
    m.reply "https://i.imgur.com/FQjQgyB.jpg"
  end

  def botsnack(m)
    m.reply ":D"
  end

  def debian_init(m)
    m.reply "part 1: http://aceattorney.sparklin.org/player.php?trial_id=57684"
  end

  def gay(m)
    m.reply "gay"
  end
end
