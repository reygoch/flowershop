<?php

class eventcontact_form extends SectionEvent
{
    public $ROOTELEMENT = 'contact-form';

    public $eParamFILTERS = array(
        
    );

    public static function about()
    {
        return array(
            'name' => 'Contact Form',
            'author' => array(
                'name' => 'Luka Hadžiegrić',
                'website' => 'http://localhost/flowershop',
                'email' => 'reygoch@gmail.com'),
            'version' => 'Symphony 2.6.7',
            'release-date' => '2016-08-04T16:59:38+00:00',
            'trigger-condition' => 'action[contact-form]'
        );
    }

    public static function getSource()
    {
        return '4';
    }

    public static function allowEditorToParse()
    {
        return true;
    }

    public static function documentation()
    {
        return '
                <h3>Success and Failure XML Examples</h3>
                <p>When saved successfully, the following XML will be returned:</p>
                <pre class="XML"><code>&lt;contact-form result="success" type="create | edit">
    &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/contact-form></code></pre>
                <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned.</p>
                <pre class="XML"><code>&lt;contact-form result="error">
    &lt;message>Entry encountered errors when saving.&lt;/message>
    &lt;field-name type="invalid | missing" />
...&lt;/contact-form></code></pre>
                <h3>Example Front-end Form Markup</h3>
                <p>This is an example of the form markup you can use on your frontend:</p>
                <pre class="XML"><code>&lt;form method="post" action="{$current-url}/" enctype="multipart/form-data">
    &lt;input name="MAX_FILE_SIZE" type="hidden" value="2097152" />
    &lt;label>Name
        &lt;input name="fields[name]" type="text" />
    &lt;/label>
    &lt;label>Surname
        &lt;input name="fields[surname]" type="text" />
    &lt;/label>
    &lt;label>Email
        &lt;input name="fields[email]" type="text" />
    &lt;/label>
    &lt;label>Phone
        &lt;input name="fields[phone]" type="text" />
    &lt;/label>
    &lt;label>Message
        &lt;textarea name="fields[message]" rows="15" cols="50">&lt;/textarea>
    &lt;/label>
    &lt;label>Attachment
        &lt;input name="fields[attachment]" type="file" />
    &lt;/label>
    &lt;input name="action[contact-form]" type="submit" value="Submit" />
&lt;/form></code></pre>
                <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
                <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
                <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
                <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://localhost/flowershop/success/" /></code></pre>';
    }

    public function load()
    {
        if (isset($_POST['action']['contact-form'])) {
            return $this->__trigger();
        }
    }

}
