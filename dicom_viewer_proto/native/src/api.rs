use std::io::{Cursor, Read};

use dicom_object::{from_reader, open_file};
use dicom_pixeldata::{
    image::{write_buffer_with_format, DynamicImage, ImageOutputFormat},
    *,
};
use flutter_rust_bridge::ZeroCopyBuffer;
use viuer::{print, Config};

pub fn process_image() -> anyhow::Result<ZeroCopyBuffer<Vec<u8>>> {
    let obj = open_file(r"C:\Users\jawad\Downloads\response.dcm");
    let binding = obj?;
    let name = binding.element_by_name("PatientName")?.to_str();
    println!("{name:?}");

    let image = binding.decode_pixel_data().unwrap();
    let options = ConvertOptions::new().with_voi_lut(VoiLutOption::Custom(WindowLevel {
        width: 2823_f64,
        center: 30_f64,
    }));
    let dynamic_image = image.to_dynamic_image_with_options(0, &options).unwrap();

    let mut w = Cursor::new(Vec::new());

    dynamic_image
        .into_rgba8()
        .write_to(&mut w, ImageOutputFormat::Jpeg(100))
        .unwrap();

    Ok(flutter_rust_bridge::ZeroCopyBuffer(w.into_inner()))
}

pub fn set_dcm_image(data: String) -> anyhow::Result<()> {
    let obj = open_file(data.clone()).unwrap();
    let study_instance_uid = obj.element_by_name("StudyInstanceUID")?.to_str()?;
    dbg!(study_instance_uid);
    std::fs::remove_file(data).unwrap();
    Ok(())
}

#[test]
fn name() {
    process_image().unwrap();
}
