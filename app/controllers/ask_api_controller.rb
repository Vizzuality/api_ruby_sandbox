class AskApiController < ApplicationController
	require "gfw_api_client"
    before_action :set_options

	# def index
	# 	@imazon_iso  	= GfwApiClient.find_set('imazon-alerts','iso','BRA')
	# 	@imazon_wdpa 	= GfwApiClient.find_set('imazon-alerts','wdpa','223')
	# 	@imazon_use  	= GfwApiClient.find_set('imazon-alerts','use','{"type":"mining","id":9417}')
	# 	@imazon_geojson = GfwApiClient.find_set('imazon-alerts','geojson','{"type":"Polygon","coordinates":[[[-63.8333,-12.3427],[-63.6218,-12.2407],[-63.6465,-12.4446],[-63.8333,-12.3427]]]}')
	# end



    def index
        @imazon_iso = GfwApiClient.find_set(@options)
        @imazon_wdpa = GfwApiClient.find_set({
        	'table_space' => 'imazon-alerts',
        	'concessions' => 'wdpa',
        	'wdpa_id' => '352219',
        	'start_date' => '2008-01-01',
        	'end_date' => '2014-01-01'})
        @imazon_use = GfwApiClient.find_set({
        	'table_space' => 'imazon-alerts',
        	'concessions' => 'use',
        	'type' => 'mining',
        	'use_id' => '9417',
        	'start_date' => '2008-01-01',
        	'end_date' => '2014-01-01'})
      	@imazon_geojson = GfwApiClient.find_set({
      		'table_space' => 'imazon-alerts',
        	'concessions' => 'geojson',
      		'geo_json' => '{"type":"Polygon","coordinates":[[[-63.8333,-12.3427],[-63.6218,-12.2407],[-63.6465,-12.4446],[-63.8333,-12.3427]]]}',
      		'start_date' => '2008-01-01',
      		'end_date' => '2014-01-01'})
		@umd_iso  = GfwApiClient.find_set({
			'table_space' => 'umd-loss-gain',
			'concessions' => 'iso',
			'country' => 'BRA'})
    end

    private
      def set_options
		@options = {}
		@options['table_space'] = 'imazon-alerts'
		@options['concessions'] = 'iso'
		# @options['wdpa_id'] = '352219'
		# @options['use_id'] = '5602'
		# @options['type'] = 'mining'
		@options['country'] = 'BRA'
		@options['region'] = '3'
		@options['start_date'] = '2014-01-01'
		@options['end_date'] = '2015-01-01'
		# @options['date'] = '2015-03-01'
      end
end
