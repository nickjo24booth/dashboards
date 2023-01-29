class ForexController < ApplicationController
  def list_pairs
    pairs_url = "https://api.exchangerate.host/symbols"

    require "open-uri"
    raw_response = URI.open(pairs_url).read

    require "json"
    parsed_pairs = JSON.parse(raw_response)

    @symbols_hash = parsed_pairs.fetch("symbols")
    #Symbols hash a hash of symbols, and each symbol hash contains and code and description.
    #Since the code matches the symbol, I can use .keys to get an array and pull the symbols
    #from there, instead of having to iterate over each element in the hash, and then dig
    #further for the code.

    @symbols_array = @symbols_hash.keys

    render({ :template => "exchange_templates/pairs.html.erb" })
  end

  def pairwise
    @this_symbol = params.fetch("symbol")

    pairs_url = "https://api.exchangerate.host/symbols"

    require "open-uri"
    raw_response = URI.open(pairs_url).read

    require "json"
    parsed_pairs = JSON.parse(raw_response)

    @symbols_hash = parsed_pairs.fetch("symbols")
    @symbols_array = @symbols_hash.keys

    render({ :template => "exchange_templates/indiv_pairs.html.erb" })
  end
end
