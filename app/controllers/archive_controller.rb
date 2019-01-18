class ArchiveController < ApplicationController
    def new
        @archive = Archive.new
    # method: get
    # action: index
    end

    def create
        @archive = Archive.new (archive_params)
        
    end
end
