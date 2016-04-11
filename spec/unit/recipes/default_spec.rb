#
# Cookbook Name:: core-linux
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'core-linux::default' do
  let(:chef_run) do
    runner = ChefSpec::SoloRunner.new
    runner.converge(described_recipe)
  end

  it 'includes the `chef-client` recipe' do
    expect(chef_run).to include_recipe('chef-client::default')
  end

  # Testing chef_client interval override
  it 'overrides interval' do
    expect(chef_run.node['chef_client']['interval']).to eq('1800')
  end

  # Testing chef_client config log_level override
  it 'overrides log config' do
    expect(chef_run.node['chef_client']['config']['log_level']).to eq('warn')
  end
end
