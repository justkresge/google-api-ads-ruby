#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.1 on 2011-09-23 16:12:00.

require 'ads_common/savon_service'
require 'dfp_api/v201104/user_service_registry'

module DfpApi; module V201104; module UserService
  class UserService < AdsCommon::SavonService
    def initialize(api, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201104'
      super(api, endpoint, namespace, :v201104)
    end

    def create_users(*args)
      return execute_action('create_users', args)
    end

    def update_user(*args)
      return execute_action('update_user', args)
    end

    def get_all_roles(*args)
      return execute_action('get_all_roles', args)
    end

    def update_users(*args)
      return execute_action('update_users', args)
    end

    def get_user(*args)
      return execute_action('get_user', args)
    end

    def get_users_by_statement(*args)
      return execute_action('get_users_by_statement', args)
    end

    def create_user(*args)
      return execute_action('create_user', args)
    end

    def perform_user_action(*args)
      return execute_action('perform_user_action', args)
    end

    private

    def get_service_registry()
      return UserServiceRegistry
    end

    def get_module()
      return DfpApi::V201104::UserService
    end
  end
end; end; end
