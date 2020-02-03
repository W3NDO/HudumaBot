require 'twitter'

client =  Twitter::REST::Client.new do |config|
	config.consumer_key			= ""
	config.consumer_secret 		= ""
	config.access_token 		= ""
	config.access_token_secret 	= ""
end

sClient = Twitter::Streaming::Client.new do |config|
	config.consumer_key			= ""
	config.consumer_secret 		= ""
	config.access_token 		= ""
	config.access_token_secret 	= ""
end

=begin 
#the following code should post health threads at least twice a week. the Helpquotes array will later be a JSON file that will hold webscrapped data.

helpQuotes =["Factitious disorder is a serious mental disorder in which someone deceives others by appearing sick, by purposely getting sick or by self-injury. Factitious disorder also can happen when family members or caregivers falsely present others, such as children, as being ill, injured or impaired. Factitious disorder symptoms can range from mild (slight exaggeration of symptoms) to severe (previously called Munchausen syndrome). The person may make up symptoms or even tamper with medical tests to convince others that treatment, such as high-risk surgery, is needed.
Factitious disorder is not the same as inventing medical problems for practical benefit, such as getting out of work or winning a lawsuit. Although people with factitious disorder know they are causing their symptoms or illnesses, they may not understand the reasons for their behaviors or recognize themselves as having a problem.
Factitious disorder is challenging to identify and hard to treat. However, medical and psychiatric help are critical for preventing serious injury and even death caused by the self-harm typical of this disorder.
Factitious disorder symptoms involve mimicking or producing illness or injury or exaggerating symptoms or impairment to deceive others. People with the disorder go to great lengths to hide their deception, so it may be difficult to realize that their symptoms are actually part of a serious mental health disorder. They continue with the deception, even without receiving any visible benefit or reward or when faced with objective evidence that doesn't support their claims.", 

"Soul loss means being disconnected from your soul. All of us have experienced soul loss to some extent. Soul loss is caused, and reinforced, by trauma, abuse, childhood conditioning,materialism , and ego-centered living. Soul loss manifests as the eternal sense that something is “missing” from our lives. In other words, it is disguised as the perpetual “search for happiness ” which often results in misguided, futile, and externally-focused pursuits. Our obsession with money, fame, power, beauty, and the “perfect” relationship are all attempts to get back that which we have lost contact with our soul.
Soul loss is a modern epidemic of epic proportions. It’s symptoms manifest as low self-esteem, suicidal depression, mental illnesses, physical illnesses, rage, grief, and in extreme circumstances, acts of violence, cruelty, and depravity. But there’s a reason why we identify with the ego and disconnect with the soul in the first place: it’s a survival mechanism. We must develop a sense of self , a separate sense of “me” in the world in order to function. But simultaneously, developing an ego means that we lose touch with the authentic essence of who we truly are: the Soul. Ego is basically one big defense mechanism to ensure that we’re loved, accepted, taken care of or avoid pain.
Soul Loss, in a sense, is another way of saying dissociation .If you’re familiar with basic psychology, you’ll know that dissociating means disconnecting from something, in this case, ourselves. This disconnection happens as a result of a traumatic situation or environment that we’re subjected to. It’s a defense mechanism that prevents us from totally shutting down and being incapable of functioning. ",

"Nicotine dependence  also called tobacco dependence  is an addiction to tobacco products caused by the drug nicotine. Nicotine dependence means you can't stop using the substance, even though it's causing you harm. Nicotine produces physical and mood-altering effects in your brain that are temporarily pleasing. These effects make you want to use tobacco and lead to dependence. At the same time, stopping tobacco use causes withdrawal symptoms, including irritability and anxiety. While it's the nicotine in tobacco that causes nicotine dependence, the toxic effects of tobacco result from other substances in tobacco. Smokers have much higher rates of heart disease, stroke and cancer than nonsmokers do. Regardless of how long you've smoked, stopping smoking can improve your health. Many effective treatments for nicotine dependence are available to help you manage withdrawal and stop smoking for good. Nicotine is the chemical in tobacco that keeps you smoking. Nicotine is very addictive when delivered by inhaling tobacco smoke into the lungs, which quickly releases nicotine into the blood allowing it to get into the brain within seconds of taking a puff. In the brain nicotine increases the release of brain chemicals called neurotransmitters, which help regulate mood and behavior. Nicotine dependence involves behavioral (routines, habits, feelings) as well as physical factors. These behavioral associations with smoking may act as triggers situations or feelings that activate a craving for tobacco, even if you have not smoked for some time", 
"Developing a truly positive mindset and gaining these benefits is a function of the thoughts you cultivate. I don’t claim that just “thinking happy thoughts” will bring you all the success you desire in life, and I certainly don’t believe that optimism is warranted in every situation, every minute of the day.
Developing the right thoughts is not about being constantly happy or cheerful, and it’s not about ignoring anything negative or unpleasant in your life. It’s about incorporating both the positive and negative into your perspective and choosing to still be generally optimistic.
It’s about acknowledging that you will not always be happy and learning to accept bad moods and difficult emotions when they come.
Above all, it’s about increasing your control over your own attitude in the face of whatever comes your way. You cannot control your mood, and you cannot always control the thoughts that pop into your head, but you can choose how you handle them. When you choose to give in to the negativity, pessimism, and doom-and-gloom view of the world, you are not only submitting to a loss of control and potentially wallowing in unhappiness you are missing out on an important opportunity for growth and development.
Building a positive framework for your thoughts is not about being bubbly and annoyingly cheerful, but making an investment in yourself and your future. It’s okay to feel down or think pessimistically sometimes, but choosing to respond with optimism, resilience, and gratitude will benefit you far more in the long run.", 

"Misophonia is a disorder in which certain sounds trigger emotional or physiological responses that some might perceive as unreasonable given the circumstance. Those who have misophonia might describe it as when a sound “drives you crazy.” Their reactions can range from anger and annoyance to panic and the need to flee. The disorder is sometimes called selective sound sensitivity syndrome.
Individuals with misophonia often report they are triggered by oral sounds -- the noise someone makes when they eat, breathe, or even chew. Other adverse sounds include. keyboard or finger tapping or the sound of windshield wipers. Sometimes a small repetitive motion is the cause someone fidgets, jostles you, or wiggles their foot. Similarly, people with misophonia also say they often react to the visual stimuli that accompanies sounds, and may also respond intensely to repetitive motions. Researchers believe that those with misophonia may already have issues with how their brains filter sounds and that one of the features of “misophonic sounds” may be their repetitive noise. That repetition then exacerbates the other auditory processing problems.
The disorder appears to range from mild to severe. Individuals report a range of physiologic and emotional responses, with accompanying cognitions.
The disorder can put a cramp in your social life. Those with the misophonia have been known to develop anticipatory anxiety when going into situations where trigger sounds may be present. You might avoid restaurants or eat separately from your spouse, family, or roommates.
Over time, you may also respond to visual triggers, too. Seeing something that you know may create the offending sound may elicit a response"]


#This is the loop that will create threads. 

arr = helpQuotes[2].split('.')
arr = arr.reject {|x| x == " "}
a = 0
for i in 0..arr.length
	puts "#{i}: #{arr[i]}"
end

client.update("#{arr[0]}")
for i in 1..arr.length
	x = client.update("#{arr[a]}").id
	if arr[i].split.size < 220
		client.update("#{arr[i]}", in_reply_to_status_id: x)
		a += 1
	end
end
=end

#This part filters for tweets with the specified hashtags and likes them.
x=0
topics = ['#insomnia', '#mentalhealth', '#depression',  '#ask', '#ADD', '#ADHD',]
sClient.filter(:track => topics.join(',')) do |tweet|
    if tweet.is_a?(Twitter::Tweet)
      if x %3 ==0 
	    client.retweet tweet
      end
      client.fav tweet
	  x = x+1
      puts "Huduma bot has liked #{x} tweets" #to check if the tweet function is working.
    end
end
