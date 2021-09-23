import MetalKit
import SwiftUI
import UIKit
import simd

struct VertexIn {
   var position : vector_float2 //<x,y>
   var colour : vector_float4 //<R,G,B,A>
}

struct MetalView: UIViewRepresentable {
    public var metalView = MTKView()
    
    
    func makeUIView(context: Context) -> MTKView {
        //mtkView
        metalView.delegate = context.coordinator
        metalView.preferredFramesPerSecond = 60
        metalView.enableSetNeedsDisplay = true
        if let metalDevice = MTLCreateSystemDefaultDevice() {
            metalView.device = metalDevice
        }
        metalView.framebufferOnly = false
        metalView.clearColor = MTLClearColor(red: 0, green: 0, blue: 0, alpha: 0)
        metalView.drawableSize = metalView.frame.size
        metalView.enableSetNeedsDisplay = true
        return metalView
    }
    
    func updateUIView(_ uiView: MTKView, context: Context) {
    }
    
    typealias UIViewType = MTKView
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator : NSObject, MTKViewDelegate {
        var parent: MetalView
        var metalDevice: MTLDevice!
        var metalCommandQueue: MTLCommandQueue!
        var metalRenderPipelineState : MTLRenderPipelineState!
        var pixelVerts: [VertexIn] = []
        private var vertexBuffer : MTLBuffer!
        
        init(_ parent: MetalView) {
            self.parent = parent
            if let metalDevice = MTLCreateSystemDefaultDevice() {
                self.metalDevice = metalDevice
            }
            self.metalCommandQueue = metalDevice.makeCommandQueue()!
            super.init()
            createPipelineState()
            createVertexPoints()
            vertexBuffer = metalDevice.makeBuffer(bytes: pixelVerts, length: pixelVerts.count * MemoryLayout<simd_float2>.stride, options: [])!
        }
        func mtkView(_ view: MTKView, drawableSizeWillChange size: CGSize) {
        }
        func draw(in view: MTKView) {
            
            guard let drawable = view.currentDrawable else {
                return
            }
            let commandBuffer = metalCommandQueue.makeCommandBuffer()
            let rpd = view.currentRenderPassDescriptor
            rpd?.colorAttachments[0].clearColor = MTLClearColorMake(1, 1, 0, 1)
            rpd?.colorAttachments[0].loadAction = .clear
            rpd?.colorAttachments[0].storeAction = .store
            let re = commandBuffer?.makeRenderCommandEncoder(descriptor: rpd!)
            
            re?.setRenderPipelineState(metalRenderPipelineState)
            
            re?.setVertexBuffer(vertexBuffer, offset: 0, index: 0)
            re?.drawPrimitives(type: .triangle, vertexStart: 0, vertexCount: pixelVerts.count - 1)
            re?.endEncoding()
            commandBuffer?.present(drawable)
            commandBuffer?.commit()
        }
        
        private func createPipelineState(){
            let pipelineDescriptor = MTLRenderPipelineDescriptor()

            //finds the metal file from the main bundle
            let library = metalDevice.makeDefaultLibrary()!

            //give the names of the function to the pipelineDescriptor
            pipelineDescriptor.vertexFunction = library.makeFunction(name: "vertexShader")
            pipelineDescriptor.fragmentFunction = library.makeFunction(name: "fragmentShader")

            //set the pixel format to match the MetalView's pixel format
            pipelineDescriptor.colorAttachments[0].pixelFormat = parent.metalView.colorPixelFormat

            //make the pipelinestate using the gpu interface and the pipelineDescriptor
            metalRenderPipelineState = try! metalDevice.makeRenderPipelineState(descriptor: pipelineDescriptor)
        }
        
        func createVertexPoints(){
            let col: simd_float4 = [0.5,0,0.5,0.5]
            
            pixelVerts.append(VertexIn(position: [0,0], colour: col))
            pixelVerts.append(VertexIn(position: [0,0.1], colour: col))
            pixelVerts.append(VertexIn(position: [0,-0.1], colour: col))
            pixelVerts.append(VertexIn(position: [0,0], colour: col))
            pixelVerts.append(VertexIn(position: [-0.1,0.1], colour: col))
            pixelVerts.append(VertexIn(position: [-0.1,-0.1], colour: col))
            pixelVerts.append(VertexIn(position: [0,0], colour: col))
            pixelVerts.append(VertexIn(position: [0,0], colour: col))
            
            
            
//            func rads(forDegree d: Float)->Float32{
//                        return (Float.pi*d)/180
//                    }
//
//                    let origin = simd_float2(0, 0)
//
//                    for i in 0...720 {
//                        let position : simd_float2 = [cos(rads(forDegree: Float(Float(i)/2.0))),sin(rads(forDegree: Float(Float(i)/2.0)))]
//                        pixelVerts.append(VertexIn(position: position, colour: col))
//                        if (i+1)%2 == 0 {
//                            pixelVerts.append(VertexIn(position: origin, colour: col))
//                        }
//                    }
            
            
            
//            let step: Float = 0.2
//
//
//            for a in 0...10 {
//                var x: Float = 0.4 * Float(a)
//                  let col: simd_float4 = [x,x,x,1]
//                //let col: simd_float4 = [0.1 * Float(a),0.1 * Float(a),0.1 * Float(a),1]
//                let position1 : simd_float2 = [x,0]
//                let position2 : simd_float2 = [x,1]
//                let position3 : simd_float2 = [x+step,0]
//                let position4 : simd_float2 = [x+step,1]
//                  pixelVerts.append(VertexIn(position: position1, colour: col))
//                  pixelVerts.append(VertexIn(position: position2, colour: col))
//                  pixelVerts.append(VertexIn(position: position3, colour: col))
////                  pixelVerts.append(VertexIn(position: position3, colour: col))
////                  pixelVerts.append(VertexIn(position: position4, colour: col))
////                  pixelVerts.append(VertexIn(position: position2, colour: col))
//              }
          }
    }
    
    
    
}
