# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module ClouddebuggerV2
      
      class StatusMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitSourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Variable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StackFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RepoId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FormatMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExtendedSourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDebuggeesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AliasContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Debuggee
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProjectRepoId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListActiveBreakpointsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudWorkspaceSourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateActiveBreakpointResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GerritSourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudWorkspaceId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBreakpointsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Breakpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateActiveBreakpointRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetBreakpointResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudRepoSourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegisterDebuggeeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegisterDebuggeeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetBreakpointResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StatusMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_error, as: 'isError'
          property :description, as: 'description', class: Google::Apis::ClouddebuggerV2::FormatMessage, decorator: Google::Apis::ClouddebuggerV2::FormatMessage::Representation
      
          property :refers_to, as: 'refersTo'
        end
      end
      
      class GitSourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :revision_id, as: 'revisionId'
          property :url, as: 'url'
        end
      end
      
      class Variable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :var_table_index, as: 'varTableIndex'
          property :value, as: 'value'
          collection :members, as: 'members', class: Google::Apis::ClouddebuggerV2::Variable, decorator: Google::Apis::ClouddebuggerV2::Variable::Representation
      
          property :status, as: 'status', class: Google::Apis::ClouddebuggerV2::StatusMessage, decorator: Google::Apis::ClouddebuggerV2::StatusMessage::Representation
      
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class StackFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function, as: 'function'
          collection :arguments, as: 'arguments', class: Google::Apis::ClouddebuggerV2::Variable, decorator: Google::Apis::ClouddebuggerV2::Variable::Representation
      
          collection :locals, as: 'locals', class: Google::Apis::ClouddebuggerV2::Variable, decorator: Google::Apis::ClouddebuggerV2::Variable::Representation
      
          property :location, as: 'location', class: Google::Apis::ClouddebuggerV2::SourceLocation, decorator: Google::Apis::ClouddebuggerV2::SourceLocation::Representation
      
        end
      end
      
      class RepoId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_repo_id, as: 'projectRepoId', class: Google::Apis::ClouddebuggerV2::ProjectRepoId, decorator: Google::Apis::ClouddebuggerV2::ProjectRepoId::Representation
      
          property :uid, as: 'uid'
        end
      end
      
      class FormatMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :parameters, as: 'parameters'
          property :format, as: 'format'
        end
      end
      
      class ExtendedSourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context', class: Google::Apis::ClouddebuggerV2::SourceContext, decorator: Google::Apis::ClouddebuggerV2::SourceContext::Representation
      
          hash :labels, as: 'labels'
        end
      end
      
      class ListDebuggeesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :debuggees, as: 'debuggees', class: Google::Apis::ClouddebuggerV2::Debuggee, decorator: Google::Apis::ClouddebuggerV2::Debuggee::Representation
      
        end
      end
      
      class AliasContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :kind, as: 'kind'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SourceLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :line, as: 'line'
          property :path, as: 'path'
        end
      end
      
      class Debuggee
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ext_source_contexts, as: 'extSourceContexts', class: Google::Apis::ClouddebuggerV2::ExtendedSourceContext, decorator: Google::Apis::ClouddebuggerV2::ExtendedSourceContext::Representation
      
          hash :labels, as: 'labels'
          property :is_inactive, as: 'isInactive'
          property :status, as: 'status', class: Google::Apis::ClouddebuggerV2::StatusMessage, decorator: Google::Apis::ClouddebuggerV2::StatusMessage::Representation
      
          property :project, as: 'project'
          property :id, as: 'id'
          property :agent_version, as: 'agentVersion'
          property :is_disabled, as: 'isDisabled'
          property :description, as: 'description'
          property :uniquifier, as: 'uniquifier'
          collection :source_contexts, as: 'sourceContexts', class: Google::Apis::ClouddebuggerV2::SourceContext, decorator: Google::Apis::ClouddebuggerV2::SourceContext::Representation
      
        end
      end
      
      class ProjectRepoId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id, as: 'projectId'
          property :repo_name, as: 'repoName'
        end
      end
      
      class ListActiveBreakpointsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_wait_token, as: 'nextWaitToken'
          collection :breakpoints, as: 'breakpoints', class: Google::Apis::ClouddebuggerV2::Breakpoint, decorator: Google::Apis::ClouddebuggerV2::Breakpoint::Representation
      
          property :wait_expired, as: 'waitExpired'
        end
      end
      
      class CloudWorkspaceSourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :snapshot_id, as: 'snapshotId'
          property :workspace_id, as: 'workspaceId', class: Google::Apis::ClouddebuggerV2::CloudWorkspaceId, decorator: Google::Apis::ClouddebuggerV2::CloudWorkspaceId::Representation
      
        end
      end
      
      class UpdateActiveBreakpointResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GerritSourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gerrit_project, as: 'gerritProject'
          property :alias_context, as: 'aliasContext', class: Google::Apis::ClouddebuggerV2::AliasContext, decorator: Google::Apis::ClouddebuggerV2::AliasContext::Representation
      
          property :host_uri, as: 'hostUri'
          property :revision_id, as: 'revisionId'
          property :alias_name, as: 'aliasName'
        end
      end
      
      class CloudWorkspaceId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :repo_id, as: 'repoId', class: Google::Apis::ClouddebuggerV2::RepoId, decorator: Google::Apis::ClouddebuggerV2::RepoId::Representation
      
        end
      end
      
      class ListBreakpointsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_wait_token, as: 'nextWaitToken'
          collection :breakpoints, as: 'breakpoints', class: Google::Apis::ClouddebuggerV2::Breakpoint, decorator: Google::Apis::ClouddebuggerV2::Breakpoint::Representation
      
        end
      end
      
      class Breakpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_email, as: 'userEmail'
          property :action, as: 'action'
          property :log_level, as: 'logLevel'
          property :id, as: 'id'
          property :location, as: 'location', class: Google::Apis::ClouddebuggerV2::SourceLocation, decorator: Google::Apis::ClouddebuggerV2::SourceLocation::Representation
      
          property :final_time, as: 'finalTime'
          collection :variable_table, as: 'variableTable', class: Google::Apis::ClouddebuggerV2::Variable, decorator: Google::Apis::ClouddebuggerV2::Variable::Representation
      
          property :create_time, as: 'createTime'
          property :log_message_format, as: 'logMessageFormat'
          hash :labels, as: 'labels'
          collection :expressions, as: 'expressions'
          collection :evaluated_expressions, as: 'evaluatedExpressions', class: Google::Apis::ClouddebuggerV2::Variable, decorator: Google::Apis::ClouddebuggerV2::Variable::Representation
      
          property :is_final_state, as: 'isFinalState'
          collection :stack_frames, as: 'stackFrames', class: Google::Apis::ClouddebuggerV2::StackFrame, decorator: Google::Apis::ClouddebuggerV2::StackFrame::Representation
      
          property :condition, as: 'condition'
          property :status, as: 'status', class: Google::Apis::ClouddebuggerV2::StatusMessage, decorator: Google::Apis::ClouddebuggerV2::StatusMessage::Representation
      
        end
      end
      
      class UpdateActiveBreakpointRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :breakpoint, as: 'breakpoint', class: Google::Apis::ClouddebuggerV2::Breakpoint, decorator: Google::Apis::ClouddebuggerV2::Breakpoint::Representation
      
        end
      end
      
      class SetBreakpointResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :breakpoint, as: 'breakpoint', class: Google::Apis::ClouddebuggerV2::Breakpoint, decorator: Google::Apis::ClouddebuggerV2::Breakpoint::Representation
      
        end
      end
      
      class SourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gerrit, as: 'gerrit', class: Google::Apis::ClouddebuggerV2::GerritSourceContext, decorator: Google::Apis::ClouddebuggerV2::GerritSourceContext::Representation
      
          property :cloud_repo, as: 'cloudRepo', class: Google::Apis::ClouddebuggerV2::CloudRepoSourceContext, decorator: Google::Apis::ClouddebuggerV2::CloudRepoSourceContext::Representation
      
          property :cloud_workspace, as: 'cloudWorkspace', class: Google::Apis::ClouddebuggerV2::CloudWorkspaceSourceContext, decorator: Google::Apis::ClouddebuggerV2::CloudWorkspaceSourceContext::Representation
      
          property :git, as: 'git', class: Google::Apis::ClouddebuggerV2::GitSourceContext, decorator: Google::Apis::ClouddebuggerV2::GitSourceContext::Representation
      
        end
      end
      
      class CloudRepoSourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :revision_id, as: 'revisionId'
          property :alias_name, as: 'aliasName'
          property :repo_id, as: 'repoId', class: Google::Apis::ClouddebuggerV2::RepoId, decorator: Google::Apis::ClouddebuggerV2::RepoId::Representation
      
          property :alias_context, as: 'aliasContext', class: Google::Apis::ClouddebuggerV2::AliasContext, decorator: Google::Apis::ClouddebuggerV2::AliasContext::Representation
      
        end
      end
      
      class RegisterDebuggeeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :debuggee, as: 'debuggee', class: Google::Apis::ClouddebuggerV2::Debuggee, decorator: Google::Apis::ClouddebuggerV2::Debuggee::Representation
      
        end
      end
      
      class RegisterDebuggeeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :debuggee, as: 'debuggee', class: Google::Apis::ClouddebuggerV2::Debuggee, decorator: Google::Apis::ClouddebuggerV2::Debuggee::Representation
      
        end
      end
      
      class GetBreakpointResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :breakpoint, as: 'breakpoint', class: Google::Apis::ClouddebuggerV2::Breakpoint, decorator: Google::Apis::ClouddebuggerV2::Breakpoint::Representation
      
        end
      end
    end
  end
end
