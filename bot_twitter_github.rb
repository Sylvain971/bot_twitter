require "twitter"

$client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "TAJOILIECLÉ"
  config.consumer_secret     = "TAJOILIECLÉ"
  config.access_token        = "TAJOILIECLÉ"
  config.access_token_secret = "TAJOILIECLÉ"
end

#J'ai changé le titre du client pour éviter les confusions, et ça marche
$client2 = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = "TAJOILIECLÉ"
  config.consumer_secret     = "TAJOILIECLÉ"
  config.access_token        = "TAJOILIECLÉ"
  config.access_token_secret = "TAJOILIECLÉ"
end

# Je crée une fonction pour tweeter, actualiser mes "statuts" pour m'exprimer
def tweeter(tweet)
	$client.update(tweet)
end

# Je crée une fonction pour suivre les journalistes qui m'intéressents
def suivre(journalistes)
	journalistes.each { |journaliste|
		$client.follow(journaliste)
	}
end

# J'aimerais mentionner les journalistes, je crée donc une journaliste et leur affiche un message leur parlant de THP. Pour aller plus loin il aurait fallu créer un intervalle temps pour poster le message.
def interagir(journalistes)
	journalistes.each { |journaliste|
	message = "The Hacking Project c'est tellement bien que même votre chat saura coder ! " + journaliste
		$client.update(message)
	}
end

