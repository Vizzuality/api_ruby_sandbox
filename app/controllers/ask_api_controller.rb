class AskApiController < ApplicationController
	require "gfw_api_client"
	def index
		@imazon_iso  	= GfwApiClient.find_set('imazon-alerts','iso','BRA')
		@imazon_wdpa 	= GfwApiClient.find_set('imazon-alerts','wdpa','223')
		@imazon_use  	= GfwApiClient.find_set('imazon-alerts','use','{"type":"mining","id":9417}')
		@imazon_geojson = GfwApiClient.find_set('imazon-alerts','geojson','{"type":"Polygon","coordinates":[[[-63.8333,-12.3427],[-63.6218,-12.2407],[-63.6465,-12.4446],[-63.8333,-12.3427]]]}')
		@umd_iso 	 	= GfwApiClient.find_set('umd-loss-gain','iso','BRA')
	end
end
