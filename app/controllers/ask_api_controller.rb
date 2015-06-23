class AskApiController < ApplicationController
	require "gfw_api_client"
	def index
		@imazon_iso  = GfwApiClient.find_set('imazon-alerts','iso','BRA')
		@imazon_wdpa = GfwApiClient.find_set('imazon-alerts','wdpa','223')
		@imazon_use  = GfwApiClient.find_set('imazon-alerts','use','{"type":"mining","id":9417}')
		@umd_iso 	 = GfwApiClient.find_set('umd-loss-gain','iso','BRA')
	end
end
