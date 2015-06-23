class AskApiController < ApplicationController
	require "gfw_api_client"
	def index
		@imazon_iso = GfwApiClient.find_set('imazon-alerts','BRA')
		@umd_iso 	= GfwApiClient.find_set('umd-loss-gain','BRA')
	end
end
