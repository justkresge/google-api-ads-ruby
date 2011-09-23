#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.1 on 2011-09-23 16:11:50.

require 'dfp_api/errors'

module DfpApi; module V201104; module OrderService
  class OrderServiceRegistry
    ORDERSERVICE_METHODS = {:get_orders_by_statement=>{:output=>{:fields=>[{:type=>"OrderPage", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_orders_by_statement_response"}, :input=>[{:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}]}, :perform_order_action=>{:output=>{:fields=>[{:type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"perform_order_action_response"}, :input=>[{:type=>"OrderAction", :min_occurs=>0, :max_occurs=>1, :name=>:order_action}, {:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}]}, :update_order=>{:output=>{:fields=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"update_order_response"}, :input=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>1, :name=>:order}]}, :create_order=>{:output=>{:fields=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"create_order_response"}, :input=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>1, :name=>:order}]}, :update_orders=>{:output=>{:fields=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"update_orders_response"}, :input=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:orders}]}, :create_orders=>{:output=>{:fields=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"create_orders_response"}, :input=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:orders}]}, :get_order=>{:output=>{:fields=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_order_response"}, :input=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:order_id}]}}
    ORDERSERVICE_TYPES = {:PauseOrders=>{:fields=>[], :base=>"OrderAction"}, :Authentication=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:authentication_type}], :abstract=>true}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:request_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:response_time}]}, :OAuth=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:parameters}], :base=>"Authentication"}, :Money=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:currency_code}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:micro_amount}]}, :TextValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :ResumeAndOverbookOrders=>{:fields=>[], :base=>"ResumeOrders"}, :BooleanValue=>{:fields=>[{:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :Statement=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:query}, {:type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:values}]}, :NumberValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :ApproveAndOverbookOrders=>{:fields=>[], :base=>"ApproveOrders"}, :UnarchiveOrders=>{:fields=>[], :base=>"OrderAction"}, :ResumeOrders=>{:fields=>[], :base=>"OrderAction"}, :ClientLogin=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:token}], :base=>"Authentication"}, :String_ValueMapEntry=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:key}, {:type=>"Value", :min_occurs=>0, :max_occurs=>1, :name=>:value}]}, :OrderAction=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:order_action_type}], :abstract=>true}, :ApproveOrders=>{:fields=>[], :base=>"OrderAction"}, :UpdateResult=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:num_changes}]}, :RetractOrders=>{:fields=>[], :base=>"OrderAction"}, :Date=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:year}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:month}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:day}]}, :SubmitOrdersForApproval=>{:fields=>[], :base=>"OrderAction"}, :Order=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"DateTime", :min_occurs=>0, :max_occurs=>1, :name=>:start_date_time}, {:type=>"DateTime", :min_occurs=>0, :max_occurs=>1, :name=>:end_date_time}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:unlimited_end_date_time}, {:type=>"OrderStatus", :min_occurs=>0, :max_occurs=>1, :name=>:status}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:is_archived}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:notes}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:external_id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:currency_code}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:advertiser_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:agency_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:creator_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:trafficker_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:salesperson_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:total_impressions_delivered}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:total_clicks_delivered}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:total_budget}]}, :DisapproveOrders=>{:fields=>[], :base=>"OrderAction"}, :SubmitOrdersForApprovalAndOverbook=>{:fields=>[], :base=>"SubmitOrdersForApproval"}, :OrderPage=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:total_result_set_size}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:start_index}, {:type=>"Order", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:results}]}, :DateTime=>{:fields=>[{:type=>"Date", :min_occurs=>0, :max_occurs=>1, :name=>:date}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:hour}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:minute}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:second}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:time_zone_id}]}, :ArchiveOrders=>{:fields=>[], :base=>"OrderAction"}, :Value=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value_type}], :abstract=>true}, :SoapRequestHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:network_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:application_name}, {:type=>"Authentication", :min_occurs=>0, :max_occurs=>1, :name=>:authentication}]}}
    ORDERSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return ORDERSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return ORDERSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return ORDERSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < DfpApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end
