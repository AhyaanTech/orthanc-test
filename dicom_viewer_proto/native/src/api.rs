use dicom_object::from_reader;

pub fn set_dcm_data(path: Vec<u8>) {
    let obj = from_reader(path.as_slice());
    let binding = obj.unwrap();
    let name = binding.element_by_name("PatientName").unwrap().to_str();

    dbg!(name.unwrap());
}
