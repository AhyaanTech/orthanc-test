use std::{
    fs::{self, File},
    io::copy,
};

use dicom_object::{from_reader, open_file};
use orthanc::Client;
use tempfile::{tempfile, Builder, NamedTempFile};

#[tokio::main(flavor = "current_thread")]
pub async fn set_dcm_data() -> anyhow::Result<()> {
    // let file = NamedTempFile::new()?;
    // let file2 = file.reopen().unwrap();

    // let _fname = "13453196-874ea965-25cbb181-dd776e98-26fdb174.dcm";
    // let instance_id = "13453196-874ea965-25cbb181-dd776e98-26fdb174";

    // let client = Client::new("http://localhost:8042");

    // client.instance_dicom(instance_id, file).unwrap();

    let obj = open_file(r"C:\Users\jawad\Downloads\response.dcm");
    let binding = obj?;
    let name = binding.element_by_name("PatientName")?.to_str();
    println!("{name:?}");
    Ok(())
}

#[test]
fn name() {
    set_dcm_data().unwrap();
}
