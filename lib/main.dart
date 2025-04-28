import 'package:flutter/material.dart';

void main() {
  runApp(MyPortfolioApp()); // Main function theke app start hocche
}

//Myapp class
class MyPortfolioApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: PortfolioHomePage(),
    );
  }
}

//Main home page Widget
class PortfolioHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('My  Portfolio'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          //profile pic set here
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?crop=entropy&cs=tinysrgb&fit=crop&h=200&w=200'


              ),
            ),
          ),
         SizedBox(height: 20),
          Center(
            //name set here
            child: Text(
              'Arafat Jahan',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //short bio
          SizedBox(height: 24),
          Text(
            'About Me',
            style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'I am a passionate Flutter developer with experience in building beautiful and functional apps.',
          ),
          SizedBox(height: 24),
          Text(
            'Skills',
            style: TextStyle(fontSize: 22,color: Colors.blue,fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
              Icon(Icons.phone_android, size: 40, color:Colors.deepPurple),

              SizedBox(height: 4),
              Text('Flutter'),
    ],
                ),
              Column(
                children: [
                  Icon(Icons.design_services, size: 40, color: Colors.deepPurple),
                  SizedBox(height: 4,),
                  Text('UI/UX'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.code, size: 40, color: Colors.deepPurple),
                  SizedBox(height: 4),
                  Text('Dart')
                ],
              ),

            ],


          ),
          SizedBox(height: 24,),
          //Project section
          Text('Projects',
            style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),

          ),
          SizedBox(height: 8),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context,index ){
              List<String> projectImages =[
                'https://images.unsplash.com/photo-1600585154340-be6161a56a0c?crop=entropy&cs=tinysrgb&fit=crop&h=200&w=200', // Nice Project Image 1
                'https://images.unsplash.com/photo-1600585154340-be6161a56a0c?crop=entropy&cs=tinysrgb&fit=crop&h=200&w=200', // Nice Project Image 2
                'https://images.unsplash.com/photo-1506744038136-46273834b3fb?crop=entropy&cs=tinysrgb&fit=crop&h=200&w=200', // Nice Project Image 3
                'https://images.unsplash.com/photo-1522199710521-72d69614c702?crop=entropy&cs=tinysrgb&fit=crop&h=200&w=200', // Nice Project Image 4
                'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?crop=entropy&cs=tinysrgb&fit=crop&h=200&w=200', // Nice Project Image 5
                'https://images.unsplash.com/photo-1481277542470-605612bd2d61?crop=entropy&cs=tinysrgb&fit=crop&h=200&w=200', // Nice Project Image 6
              ];
              return Card(
                elevation: 3,
                child: Column(
                  children: [
                    Expanded(
                      child: Image.network(
                        projectImages[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Project ${index + 1}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              );

            },
          ),
          SizedBox(
            height: 24),
            Text(
              'Contact Me',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          SizedBox(height: 8),
          //message textfield
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              labelText: 'Message',
              border: OutlineInputBorder(

              ),
            ),
          ),
          SizedBox(height: 16,),
          ElevatedButton(
            onPressed: (){
            },
            child: Text('Submit'),
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.yellow,
    padding: EdgeInsets.all(5)
          )
          ),
        ],
      ),
    );
  }
}