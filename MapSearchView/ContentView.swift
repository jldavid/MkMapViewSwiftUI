import SwiftUI
import MapKit

struct MapSearchingView: View {
    var body: some View {
        ZStack(alignment: .top) {
            Color.blue
            CustomMapView().edgesIgnoringSafeArea(.all)
            HStack {
                Text("Hello from SwiftUI")
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
                .background(Color.white)
            }.padding()
        }
    }
}

struct CustomMapView: UIViewRepresentable {
    typealias UIViewType = MKMapView
    let mapView = MKMapView()
    func makeUIView(context: Context) -> MKMapView {
        setupRegionForMap()
        return mapView
    }
    private func setupRegionForMap() {
        let region = MKCoordinateRegion(center: CLLocationCoordinate2DMake(37.3338, -122.01131),
                                        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
        mapView.setRegion(region, animated: true)
    }
    func updateUIView(_ uiView: MKMapView, context: Context) {
    }
}

#Preview {
    MapSearchingView()
}
