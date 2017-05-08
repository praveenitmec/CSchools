module SchoolsHelper
  def setup_school(school)
    school.school_address ||= SchoolAddress.new
    school
  end
end
