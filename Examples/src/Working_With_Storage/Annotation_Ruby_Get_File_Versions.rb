# Load the gem
require 'groupdocs_annotation_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Storage
  def self.Annotation_Ruby_Get_File_Versions()

    # Getting instance of the API
    $api = Common_Utilities.Get_StorageApi_Instance()
    
    $request = GroupDocsAnnotationCloud::GetFileVersionsRequest.new("annotationdocs/one-page.docx", $myStorage)
    $response = $api.get_file_versions($request)

    puts("Expected response type is FileVersions: " + ($response).to_s)
  end
end