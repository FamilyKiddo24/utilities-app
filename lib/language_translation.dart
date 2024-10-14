import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class LanguageTranslationPage extends StatefulWidget {
  const LanguageTranslationPage({super.key});

  @override
  _LanguageTranslationPageState createState() => _LanguageTranslationPageState();
}

class _LanguageTranslationPageState extends State<LanguageTranslationPage> {

  var languages = ['Afrikaans', 'Albanian', 'Amharic', 'Arabic', 'Armenian', 'Assamese', 'Aymara', 'Azerbaijani', 'Bambara', 'Basque', 'Belarusian', 'Bengali', 'Bhojpuri', 'Bosnian', 'Bulgarian', 'Catalan', 'Cebuano', 'Chinese (Simplified)', 'Chinese (Traditional)', 'Corsican', 'Croatian', 'Czech', 'Danish', 'Dhivehi', 'Dogri', 'Dutch', 'English', 'Esperanto', 'Estonian', 'Ewe', 'Filipino (Tagalog)', 'Finnish', 'French', 'Frisian', 'Galician', 'Georgian', 'German', 'Greek', 'Guarani', 'Gujarati', 'Haitian Creole', 'Hausa', 'Hawaiian', 'Hebrew', 'Hindi', 'Hmong', 'Hungarian', 'Icelandic', 'Igbo', 'Ilocano', 'Indonesian', 'Irish', 'Italian', 'Japanese', 'Javanese', 'Kannada', 'Kazakh', 'Khmer', 'Kinyarwanda', 'Konkani', 'Korean', 'Krio', 'Kurdish (Kurmanji)', 'Kurdish (Sorani)', 'Kyrgyz', 'Lao', 'Latin', 'Latvian', 'Lingala', 'Lithuanian', 'Luganda', 'Luxembourgish', 'Macedonian', 'Maithili', 'Malagasy', 'Malay', 'Malayalam', 'Maltese', 'Maori', 'Marathi', 'Meiteilon (Manipuri)', 'Mizo', 'Mongolian', 'Myanmar (Burmese)', 'Nepali', 'Norwegian', 'Nyanja (Chichewa)', 'Odia (Oriya)', 'Oromo', 'Pashto', 'Persian', 'Polish', 'Portuguese', 'Punjabi', 'Quechua', 'Romanian', 'Russian', 'Samoan', 'Sanskrit', 'Scots Gaelic', 'Sepedi', 'Serbian', 'Sesotho', 'Shona', 'Sindhi', 'Sinhala', 'Slovak', 'Slovenian', 'Somali', 'Spanish', 'Sundanese', 'Swahili', 'Swedish', 'Tagalog (Filipino)', 'Tajik', 'Tamil', 'Tatar', 'Telugu', 'Thai', 'Tigrinya', 'Tsonga', 'Turkish', 'Turkmen', 'Twi (Akan)', 'Ukrainian', 'Urdu', 'Uyghur', 'Uzbek', 'Vietnamese', 'Welsh', 'Xhosa', 'Yiddish', 'Yoruba', 'Zulu'];
  var originLanguage = 'From';
  var destinationLanguage = 'To';
  var output = '';
  TextEditingController languageController = TextEditingController();

  void translate(String src, String dest, String input) async {
    GoogleTranslator translator = GoogleTranslator();
    var translation = await translator.translate(input, from: src, to: dest);
    setState(() {
      output = translation.text.toString();
    });

    if(src=='--' || dest=='--') {
      setState(() {
        output = "Failed To Translate";
      });
    }
  }

  String getLanguageCode(String language) {
    if (language == "English") {
        return 'en';
    } else if(language == "Afrikaans") {
        return 'af';
    } else if (language == "Albanian") {
        return 'sq';
    } else if (language == "Amharic") {
        return 'am';
    } else if (language == "Arabic") {
        return 'ar';
    } else if (language == "Armenian") {
        return 'hy';
    } else if (language == "Assamese") {
        return 'as';
    } else if (language == "Aymara") {
        return 'ay';
    } else if (language == "Azerbaijani") {
        return 'az';
    } else if (language == "Bambara") {
        return 'bm';
    } else if (language == "Basque") {
        return 'eu';
    } else if (language == "Belarusian") {
        return 'be';
    } else if (language == "Bengali") {
        return 'bn';
    } else if (language == "Bhojpuri") {
        return 'bho';
    } else if (language == "Bosnian") {
        return 'bs';
    } else if (language == "Bulgarian") {
        return 'bg';
    } else if (language == "Catalan") {
        return 'ca';
    } else if (language == "Cebuano") {
        return 'ceb';
    } else if (language == "Chinese (Simplified)") {
        return 'zh-cn';
    } else if (language == "Chinese (Traditional)") {
        return 'zh-tw';
    } else if (language == "Corsican") {
        return 'co';
    } else if (language == "Croatian") {
        return 'hr';
    } else if (language == "Czech") {
        return 'cs';
    } else if (language == "Danish") {
        return 'da';
    } else if (language == "Dhivehi") {
        return 'dv';
    } else if (language == "Dogri") {
        return 'doi';
    } else if (language == "Dutch") {
        return 'nl';
    } else if (language == "Esperanto") {
        return 'eo';
    } else if (language == "Estonian") {
        return 'et';
    } else if (language == "Ewe") {
        return 'ee';
    } else if (language == "Filipino (Tagalog)") {
        return 'fil';
    } else if (language == "Finnish") {
        return 'fi';
    } else if (language == "French") {
        return 'fr';
    } else if (language == "Frisian") {
        return 'fy';
    } else if (language == "Galician") {
        return 'gl';
    } else if (language == "Georgian") {
        return 'ka';
    } else if (language == "German") {
        return 'de';
    } else if (language == "Greek") {
        return 'el';
    } else if (language == "Guarani") {
        return 'gn';
    } else if (language == "Gujarati") {
        return 'gu';
    } else if (language == "Haitian Creole") {
        return 'ht';
    } else if (language == "Hausa") {
        return 'ha';
    } else if (language == "Hawaiian") {
        return 'haw';
    } else if (language == "Hebrew") {
        return 'he';
    } else if (language == "Hindi") {
        return 'hi';
    } else if (language == "Hmong") {
        return 'hmn';
    } else if (language == "Hungarian") {
        return 'hu';
    } else if (language == "Icelandic") {
        return 'is';
    } else if (language == "Igbo") {
        return 'ig';
    } else if (language == "Ilocano") {
        return 'ilo';
    } else if (language == "Indonesian") {
        return 'id';
    } else if (language == "Irish") {
        return 'ga';
    } else if (language == "Italian") {
        return 'it';
    } else if (language == "Japanese") {
        return 'ja';
    } else if (language == "Javanese") {
        return 'jv';
    } else if (language == "Kannada") {
        return 'kn';
    } else if (language == "Kazakh") {
        return 'kk';
    } else if (language == "Khmer") {
        return 'km';
    } else if (language == "Kinyarwanda") {
        return 'rw';
    } else if (language == "Konkani") {
        return 'gom';
    } else if (language == "Korean") {
        return 'ko';
    } else if (language == "Krio") {
        return 'kri';
    } else if (language == "Kurdish (Kurmanji)") {
        return 'ku';
    } else if (language == "Kurdish (Sorani)") {
        return 'ckb';
    } else if (language == "Kyrgyz") {
        return 'ky';
    } else if (language == "Lao") {
        return 'lo';
    } else if (language == "Latin") {
        return 'la';
    } else if (language == "Latvian") {
        return 'lv';
    } else if (language == "Lingala") {
        return 'ln';
    } else if (language == "Lithuanian") {
        return 'lt';
    } else if (language == "Luganda") {
        return 'lg';
    } else if (language == "Luxembourgish") {
        return 'lb';
    } else if (language == "Macedonian") {
        return 'mk';
    } else if (language == "Maithili") {
        return 'mai';
    } else if (language == "Malagasy") {
        return 'mg';
    } else if (language == "Malay") {
        return 'ms';
    } else if (language == "Malayalam") {
        return 'ml';
    } else if (language == "Maltese") {
        return 'mt';
    } else if (language == "Maori") {
        return 'mi';
    } else if (language == "Marathi") {
        return 'mr';
    } else if (language == "Meiteilon (Manipuri)") {
        return 'mni-mtei';
    } else if (language == "Mizo") {
        return 'lus';
    } else if (language == "Mongolian") {
        return 'mn';
    } else if (language == "Myanmar (Burmese)") {
        return 'my';
    } else if (language == "Nepali") {
        return 'ne';
    } else if (language == "Norwegian") {
        return 'no';
    } else if (language == "Nyanja (Chichewa)") {
        return 'ny';
    } else if (language == "Odia (Oriya)") {
        return 'or';
    } else if (language == "Oromo") {
        return 'om';
    } else if (language == "Pashto") {
        return 'ps';
    } else if (language == "Persian") {
        return 'fa';
    } else if (language == "Polish") {
        return 'pl';
    } else if (language == "Portuguese") {
        return 'pt';
    } else if (language == "Punjabi") {
        return 'pa';
    } else if (language == "Quechua") {
        return 'qu';
    } else if (language == "Romanian") {
        return 'ro';
    } else if (language == "Russian") {
        return 'ru';
    } else if (language == "Samoan") {
        return 'sm';
    } else if (language == "Sanskrit") {
        return 'sa';
    } else if (language == "Scots Gaelic") {
        return 'gd';
    } else if (language == "Sepedi") {
        return 'nso';
    } else if (language == "Serbian") {
        return 'sr';
    } else if (language == "Sesotho") {
        return 'st';
    } else if (language == "Shona") {
        return 'sn';
    } else if (language == "Sindhi") {
        return 'sd';
    } else if (language == "Sinhala") {
        return 'si';
    } else if (language == "Slovak") {
        return 'sk';
    } else if (language == "Slovenian") {
        return 'sl';
    } else if (language == "Somali") {
        return 'so';
    } else if (language == "Spanish") {
        return 'es';
    } else if (language == "Sundanese") {
        return 'su';
    } else if (language == "Swahili") {
        return 'sw';
    } else if (language == "Swedish") {
        return 'sv';
    } else if (language == "Tagalog (Filipino)") {
        return 'tl';
    } else if (language == "Tajik") {
        return 'tg';
    } else if (language == "Tamil") {
        return 'ta';
    } else if (language == "Tatar") {
        return 'tt';
    } else if (language == "Telugu") {
        return 'te';
    } else if (language == "Thai") {
        return 'th';
    } else if (language == "Tigrinya") {
        return 'ti';
    } else if (language == "Tsonga") {
        return 'ts';
    } else if (language == "Turkish") {
        return 'tr';
    } else if (language == "Turkmen") {
        return 'tk';
    } else if (language == "Twi (Akan)") {
        return 'ak';
    } else if (language == "Ukrainian") {
        return 'uk';
    } else if (language == "Urdu") {
        return 'ur';
    } else if (language == "Uyghur") {
        return 'ug';
    } else if (language == "Uzbek") {
        return 'uz';
    } else if (language == "Vietnamese") {
        return 'vi';
    } else if (language == "Welsh") {
        return 'cy';
    } else if (language == "Xhosa") {
        return 'xh';
    } else if (language == "Yiddish") {
        return 'yi';
    } else if (language == "Yoruba") {
        return 'yo';
    } else if (language == "Zulu") {
        return 'zu';
    }
    return "--";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Language Translator',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(0, 255, 16, 34),
        elevation: 0,
      ),
      backgroundColor: const Color.fromARGB(57, 32, 31, 70),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Flexible(
                      child: DropdownButton<String>(
                        focusColor: Colors.white,
                        iconDisabledColor: Colors.white,
                        iconEnabledColor: Colors.white,
                        hint: Text(
                          originLanguage,
                          style: const TextStyle(color: Colors.white),
                        ),
                        dropdownColor: Colors.white,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        isExpanded: true, // This ensures the dropdown fits its container
                        items: languages.map((String dropDownStringItem) {
                          return DropdownMenuItem(
                            child: Text(dropDownStringItem),
                            value: dropDownStringItem,
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            originLanguage = value!;
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Icon(
                      Icons.arrow_right_alt_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                    const SizedBox(width: 20),
                    Flexible(
                      child: DropdownButton<String>(
                        focusColor: Colors.white,
                        iconDisabledColor: Colors.white,
                        iconEnabledColor: Colors.white,
                        hint: Text(
                          destinationLanguage,
                          style: const TextStyle(color: Colors.white),
                        ),
                        dropdownColor: Colors.white,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        isExpanded: true, // This ensures the dropdown fits its container
                        items: languages.map((String dropDownStringItem) {
                          return DropdownMenuItem(
                            child: Text(dropDownStringItem),
                            value: dropDownStringItem,
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            destinationLanguage = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  cursorColor: Colors.white,
                  autofocus: false,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    labelText: 'Enter Text',
                    labelStyle: TextStyle(fontSize: 15, color: Colors.white),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1),
                    ),
                    errorStyle: TextStyle(color: Colors.red, fontSize: 15),
                  ),
                  controller: languageController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter Text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff2b3c5a),
                  ),
                  onPressed: () {
                    translate(
                      getLanguageCode(originLanguage),
                      getLanguageCode(destinationLanguage),
                      languageController.text.toString(),
                    );
                  },
                  child: const Text('Translate'),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "\n$output",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}