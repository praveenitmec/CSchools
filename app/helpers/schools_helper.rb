module SchoolsHelper
  def setup_school(school)
    school.school_address ||= SchoolAddress.new
    school.school_detail ||= SchoolDetail.new
    school
  end
end
