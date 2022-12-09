use std::io::{Cursor, Read};

use dicom_object::open_file;
use dicom_pixeldata::{
    image::{write_buffer_with_format, DynamicImage, ImageOutputFormat},
    *,
};
use viuer::{print, Config};

pub fn set_dcm_data() -> anyhow::Result<Vec<u8>> {
    let obj = open_file(r"C:\Users\jawad\Downloads\response.dcm");
    let binding = obj?;
    let name = binding.element_by_name("PatientName")?.to_str();
    println!("{name:?}");

    let image = binding.decode_pixel_data().unwrap();
    let options = ConvertOptions::new().with_voi_lut(VoiLutOption::Custom(WindowLevel {
        width: 330_f64,
        center: 30_f64,
    }));
    let dynamic_image = image.to_dynamic_image_with_options(0, &options).unwrap();

    let mut w = Cursor::new(Vec::new());

    dynamic_image
        .into_rgba8()
        .write_to(&mut w, ImageOutputFormat::Jpeg(100))
        .unwrap();

    // let img = image::load_from_memory(&w.clone().into_inner()).unwrap();

    // print(&img, &Config::default()).expect("Image printing failed.");
    Ok(w.into_inner())
}

#[test]
fn name() {
    set_dcm_data().unwrap();
}
